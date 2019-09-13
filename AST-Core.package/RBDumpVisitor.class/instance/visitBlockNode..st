visiting
visitBlockNode: aBlockNode
	stream nextPutAll: aBlockNode class name.
	aBlockNode arguments
		ifNotEmpty: [ stream nextPutAll: ' arguments: {'.
			aBlockNode arguments
				do: [ :each | 
					each acceptVisitor: self.
					stream nextPutAll: '. ' ].
			stream nextPutAll: '}' ].
	stream nextPutAll: ' body: ('.
	aBlockNode body acceptVisitor: self.
	stream nextPut: $)