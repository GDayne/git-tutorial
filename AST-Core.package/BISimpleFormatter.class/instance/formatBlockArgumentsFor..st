private-formatting
formatBlockArgumentsFor: aBlockNode
	aBlockNode arguments isEmpty
		ifTrue: [ ^ self ].
	aBlockNode arguments
		do: [ :each | 
			   codeStream nextPut: $:.
			   self 
					visitNode: each;
			   		formatCommentsFor: each;
					space ].
	codeStream nextPutAll: '| '