accessing compiled method
methodClass: aClass	
	compilationContext ifNil: [compilationContext := aClass compiler compilationContext].
	self compilationContext class: aClass