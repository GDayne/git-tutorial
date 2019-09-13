visiting
visitLiteralArrayNode: aLiteralArrayNode
	stream
		nextPutAll: aLiteralArrayNode class name;
		nextPutAll: ' value: #('.
	(aLiteralArrayNode contents collect: [ :each | each value ]) printOn: stream delimiter: ' '.
	stream nextPutAll: ')'