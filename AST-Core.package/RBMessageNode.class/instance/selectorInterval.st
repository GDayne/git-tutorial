accessing
selectorInterval
	| positions |
	positions := self keywordsIntervals. 
	^positions first first to: positions last last.