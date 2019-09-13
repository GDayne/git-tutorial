accessing
stop
	^{  
	temporaries isEmpty ifTrue: [0] ifFalse: [ self temporaries last stop]. 
	periods isEmpty ifTrue: [0] ifFalse: [periods last].
	statements isEmpty ifTrue: [0] ifFalse: [statements last stop]
	} max