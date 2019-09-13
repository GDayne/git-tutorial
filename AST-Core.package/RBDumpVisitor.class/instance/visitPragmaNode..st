visiting
visitPragmaNode: aPragmaNode
	stream
		nextPutAll: aPragmaNode class name;
		nextPutAll: ' selector: '.
	aPragmaNode selector printOn: stream.
	stream nextPutAll: ' arguments: {'.
	aPragmaNode arguments
		do: [ :each | 
			each acceptVisitor: self.
			stream nextPutAll: '. ' ].
	stream nextPut: $}