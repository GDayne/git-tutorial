private-parsing
parsePragma
	| start pragma |
	start := currentToken start.
	self step.
	pragma := self basicParsePragma.
	(currentToken isBinary and: [ currentToken value == #> ]) 
		ifFalse: [ ^ self addPragma: (self parserError: '''>'' expected') ].
	pragma left: start; right: currentToken start.
	self addPragma: pragma.