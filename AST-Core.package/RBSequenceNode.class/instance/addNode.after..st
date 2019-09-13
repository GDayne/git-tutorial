adding nodes
addNode: aNode after: anotherNode

	| index |
	index := self indexOfNode: anotherNode.
	index = 0
		ifTrue: [ ^ self addNode: aNode ].
	statements := statements asOrderedCollection
		add: aNode afterIndex: index;
		yourself.
	aNode parent: self.
	^ aNode