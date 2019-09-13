visiting
visitCascadeNode:aCascadeNode
	stream
		nextPutAll: aCascadeNode class name;
		nextPutAll: ' messages: {'.
	aCascadeNode messages
		do: [ :each | 
			each acceptVisitor: self.
			stream nextPutAll: '. ' ].
	stream nextPut: $}