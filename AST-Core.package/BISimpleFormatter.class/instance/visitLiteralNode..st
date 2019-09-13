visiting
visitLiteralNode: aLiteralNode
	self
		writeString:
			(aLiteralNode value isLiteral
				ifFalse: [ '''<an unprintable nonliteral value>''' ]
				ifTrue: [ aLiteralNode sourceText ])