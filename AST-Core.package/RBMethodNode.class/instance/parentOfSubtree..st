tree accessing
parentOfSubtree: subtree

	| sourceCode |
	sourceCode := subtree formattedCode.
	^ self allChildren reversed
		detect: [ :e | e formattedCode includesSubstring: sourceCode ]
		ifFound: [ :e | e parent ] 
		ifNone: [ nil ]