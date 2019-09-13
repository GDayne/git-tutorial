testing
pragmaNamed: aSymbol ifPresent: presentBlock ifAbsent: absentBlock
	^ self pragmas 
		detect: [ :pragma| pragma selector = aSymbol ]
		ifFound: presentBlock
		ifNone: absentBlock