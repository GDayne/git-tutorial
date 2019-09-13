visitor-double dispatching
visitCascadeNode: aCascadeNode

	| newMessages notFound |

	newMessages := OrderedCollection new: aCascadeNode messages size.
	notFound := OrderedCollection new: aCascadeNode messages size.
	aCascadeNode messages
		do: [ :each | 
			| newNode |

			newNode := self performSearches: searches on: each.
			newNode
				ifNil: [ newNode := each.
					notFound add: newNode
					].
			newNode isMessage
				ifTrue: [ newMessages add: newNode ]
				ifFalse: [ newNode isCascade
						ifTrue: [ newMessages addAll: newNode messages ]
						ifFalse: [ "Cannot replace message node inside of cascaded node with non-message node."
							self flag: #pharoFixMe.	"Maybe we should raise a warning here and catch it in the UI layer."
							newMessages add: each
							]
					]
			].
	notFound size = aCascadeNode messages size
		ifTrue: [ | receiver |

			receiver := self visitNode: aCascadeNode messages first receiver.
			newMessages do: [ :each | each receiver: receiver ]
			].
	notFound do: [ :each | each arguments: ( each arguments collect: [ :arg | self visitNode: arg ] ) ].
	aCascadeNode messages: newMessages