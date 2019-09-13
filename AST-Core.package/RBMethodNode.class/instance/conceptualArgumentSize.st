accessing - conceptual
conceptualArgumentSize
	"Return the cumulted length of the parameters (yes parameters are called arguments in Pharo - not good!). It does not count spaces and the selectors.
	Note that this length is based on the tree structure and not the source code. It does not reflect the selection interval but the space the selector would take if displayed on a single line without any space."

	^ self arguments
		inject: 0
		into: [ :sum :each | sum + each name size ]