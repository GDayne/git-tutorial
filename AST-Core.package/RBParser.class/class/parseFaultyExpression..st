parsing
parseFaultyExpression: aString 
	"parse aString even if syntactically incorrect. Instead of raising an error, we create an AST with RB RBParseErrorNode"
	^self parseExpression: aString onError: self errorNodeBlock