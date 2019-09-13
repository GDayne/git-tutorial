tree accessing
variableWith: aSymbol

	| matcher block |
	matcher := RBParseTreeSearcher new.
	block := [ :aNode :answer | aNode ].
	
	matcher
		matches: aSymbol do: block;
		matchesArgument: aSymbol do: block.
	^ matcher executeTree: self initialAnswer: nil