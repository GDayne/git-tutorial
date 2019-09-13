evaluating
evaluateForReceiver: aReceicer
	"evaluate the AST without taking variables into account"
	| methodNode |
	
	methodNode := self asDoit.
	methodNode methodClass: aReceicer class.
	^methodNode generateWithSource valueWithReceiver: aReceicer arguments: #().

