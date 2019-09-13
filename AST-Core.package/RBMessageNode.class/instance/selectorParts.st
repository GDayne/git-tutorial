accessing
selectorParts
	"Returns a collection containing all the selector composing a message"
	
	^ self keywords collect: [ :each | each asSymbol]