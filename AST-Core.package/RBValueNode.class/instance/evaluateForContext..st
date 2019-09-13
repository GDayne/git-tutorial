evaluating
evaluateForContext: aContext
	"evaluate the AST taking variables from the context"
	^(self asDoitForContext: aContext) 
		generateWithSource valueWithReceiver: aContext receiver arguments: {aContext}.

