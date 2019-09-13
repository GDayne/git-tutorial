visiting
visitArrayNode: anArrayNode
	stream
		nextPutAll: anArrayNode class name;
		nextPutAll: ' statements: { '.
	anArrayNode statements
		do: [ :each | 
			each acceptVisitor: self.
			stream nextPutAll: '. ' ].
	stream nextPut: $}