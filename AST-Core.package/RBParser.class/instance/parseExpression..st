accessing
parseExpression: anExpressionString
	"Parse and return an AST corresponding to the expression passed as argument."
	
	| node |
	node := self parseStatements: false.
	(self methodNodeClass selector: #noMethod body: node) source: anExpressionString.	"Make the sequence node have a method node as its parent"
	self atEnd ifFalse: [ ^ self parseIncompleteExpression: node ].
	^node