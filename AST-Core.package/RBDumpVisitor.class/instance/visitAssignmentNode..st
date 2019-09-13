visiting
visitAssignmentNode: anAssignmentNode
	stream
		nextPutAll: anAssignmentNode class name;
		nextPutAll: ' variable: ('.
	anAssignmentNode variable acceptVisitor: self.
	stream nextPutAll: ') value: ('.
	anAssignmentNode value acceptVisitor: self.
	stream nextPut: $)