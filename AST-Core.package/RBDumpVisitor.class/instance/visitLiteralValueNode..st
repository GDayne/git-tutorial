visiting
visitLiteralValueNode: aLiteralValueNode
	stream
		nextPutAll: aLiteralValueNode class name;
		nextPutAll: ' value: '.
	aLiteralValueNode value printOn: stream