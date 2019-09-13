visiting
visitParseErrorNode: aParseErrorNode
	stream
		nextPutAll: aParseErrorNode class name;
		nextPutAll: ' errorMessage: '.
	aParseErrorNode errorMessage printOn: stream.
	stream nextPutAll: ' value: '.
	aParseErrorNode value printOn: stream.
	stream nextPutAll: ' at: '.
	aParseErrorNode start printOn: stream