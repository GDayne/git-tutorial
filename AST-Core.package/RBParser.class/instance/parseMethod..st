accessing
parseMethod: aMethodDefinitionString
	"Parse and return a abstract syntax tree from the argument"
	
	| node |
	node := self parseMethod.
	node source: aMethodDefinitionString.
	self atEnd
		ifFalse: [ 
			 ^ self parseIncompleteExpression: node ].
	node source: aMethodDefinitionString.
	^ node