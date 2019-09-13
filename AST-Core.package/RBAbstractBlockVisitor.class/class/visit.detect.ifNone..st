enumerating
visit: aTree detect: aBlock ifNone: anErrorBlock
	| result |
	
	result := OrderedCollection new.
	
	self visit: aTree do: [ :node |
		(aBlock value: node) ifTrue: [ ^node ] ].
	
	^anErrorBlock value