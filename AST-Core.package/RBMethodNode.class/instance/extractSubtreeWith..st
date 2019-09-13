tree accessing
extractSubtreeWith: aSourceCode
	| extractedTree |
	extractedTree := self parserClass
		parseExpression: aSourceCode
		onError: [ :string :pos | ^ nil ].
	extractedTree ifNil: [ ^ nil ].
	(extractedTree isSequence and: [ extractedTree statements isEmpty ])
		ifTrue: [ ^ nil ].
	extractedTree := extractedTree isSequence
		ifTrue:
			[ RBParseTreeSearcher treeMatchingStatements: aSourceCode in: self ]
		ifFalse:
			[ RBParseTreeSearcher treeMatching: aSourceCode in: self ].	"or: [aTree isReturn]"
	^ extractedTree
		ifNotNil: [ extractedTree parent: (self parentOfSubtree: extractedTree) ]