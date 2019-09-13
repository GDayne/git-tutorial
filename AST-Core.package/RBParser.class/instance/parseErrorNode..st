error handling
parseErrorNode: aMessageString
	| sourceString errorPosition |
	currentToken isError
		ifTrue: [ ^ RBParseErrorNode errorMessage: currentToken cause value: currentToken value at: currentToken start ].
	errorPosition := self errorPosition.
	"the error at the end means in some cases that the start of the error is before"
	aMessageString = ''')'' expected'
		ifTrue: [ errorPosition := source findLastOccurrenceOfString: '(' startingAt: 1 ].
	aMessageString = '''|'' expected'
		ifTrue: [ errorPosition := source findLastOccurrenceOfString: '|' startingAt: 1 ].
	(errorPosition = 0) ifTrue: [ errorPosition := self errorPosition].
	sourceString := source copyFrom: errorPosition to: source size.
	^ RBParseErrorNode errorMessage: aMessageString value: sourceString at: errorPosition