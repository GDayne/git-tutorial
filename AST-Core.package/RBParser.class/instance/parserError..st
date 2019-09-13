error handling
parserError: aString 
	"Let the errorBlock try to recover from the error. Answer a ParseNode (possibly an RBParseErrorNode) or signal there is new source"
	| errorNode errorMessage errorPosition newSource |
	errorNode := self errorBlock cull: aString cull: self errorPosition cull: self.
	errorNode ifNotNil: [ ^ errorNode ].
	currentToken isError 
		ifTrue: [ errorMessage := currentToken cause. errorPosition := currentToken location ] 
		ifFalse: [errorMessage := aString. errorPosition := currentToken start].
	
	newSource := SyntaxErrorNotification
						inClass: Object
						withCode: source
						doitFlag: false
						errorMessage: errorMessage
						location: errorPosition.
	
	"If the syntax error notification is resumed, then the source was corrected and we have to announce that parsing can restart."					
	ReparseAfterSourceEditing signalWithNewSource: newSource.