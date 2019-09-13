evaluating
evaluate
	"evaluate the AST without taking variables into account"
	^self asDoit generateWithSource valueWithReceiver: nil arguments: #().

