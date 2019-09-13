enumerating
visit: aTree detect: aBlock
	
	^self visit: aTree detect: aBlock ifNone: [ NotFound signalFor: aBlock ]