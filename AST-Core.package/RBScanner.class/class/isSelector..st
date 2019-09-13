testing
isSelector: aSymbol
	| scanner |
	scanner := self basicNew.
	scanner on: (ReadStream on: aSymbol asString).
	scanner step.
	^ scanner isSelector