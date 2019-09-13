private-formatting
formatStatementCommentsFor: aStatementNode

	originalSource ifNil: [ ^ self ].
	aStatementNode statementComments
		do: [ :each | 
			self
				newLine;
				basicFormatCommentFor: each
			]