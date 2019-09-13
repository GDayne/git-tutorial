adding/removing
addPragma: aPragmaNode

	pragmas ifNil: [ self pragmas: OrderedCollection new ].
	pragmas add: aPragmaNode