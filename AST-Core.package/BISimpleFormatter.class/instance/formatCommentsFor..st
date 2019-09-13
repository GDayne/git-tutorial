private-formatting
formatCommentsFor: aNode

	originalSource ifNil: [ ^ self ].
	aNode comments
		do: [ :each | 
			self
				basicFormatCommentFor: each;
				newLine
			]