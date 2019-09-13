enumerating
visit: aTree do: aBlock
	^self new 
		visitBlock: aBlock;
		visitNode: aTree