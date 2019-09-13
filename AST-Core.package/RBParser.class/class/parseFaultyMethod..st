parsing
parseFaultyMethod: aString
	"parse aString even if syntactically incorrect. Instead of raising an error, we create an AST with RB RBParseErrorNode"
	^self parseMethod: aString onError: self errorNodeBlock