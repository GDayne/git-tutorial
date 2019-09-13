class initialization
initializeClassificationTable
	PatternVariableCharacter := $`.
	KeywordPatternCharacter := $@.
	CascadePatternCharacter := $;.
	classificationTable := Array new: 255.
	self 
		initializeChars: (Character allCharacters
			select: [ :each | each isLetter ])
		to: #alphabetic.
	self initializeUnderscore.
	self initializeChars: '01234567890' to: #digit.
	self initializeChars: Character specialCharacters to: #binary.
	self initializeChars: '().:;[]{}^' to: #special.
	self
		initializeChars: (Character allCharacters
			select: [ :each | each isSeparator ])
		to: #separator