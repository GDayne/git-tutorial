private-formatting
formatSequenceNodeStatementsFor: aSequenceNode
	| statements |
	statements := aSequenceNode statements.
	statements isEmpty
		ifTrue: [ ^ self ].
 
	statements doWithIndex: [ :el :i | 
		self visitNode: (statements at: i).
		i < statements size
			ifTrue: [ codeStream nextPut: $.. 
						self newLine].
		self formatStatementCommentsFor: el.
		i < statements size
			ifTrue: [  ] ]