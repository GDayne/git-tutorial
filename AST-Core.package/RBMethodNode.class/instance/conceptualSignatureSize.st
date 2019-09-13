accessing - conceptual
conceptualSignatureSize
	"Return the full length of the method signature (called with a strange name in Pharo: the patterned selector. Note that this length is based on the tree structure and not the source code. It does not reflect the selection interval but the space the signature would take if displayed on a single line."

	"When we count foo: a b: b, we add three extras spaces so args size * 2 - 1"

	^ self conceptualSelectorSize + self conceptualArgumentSize
		+ (self arguments
		ifNotEmpty: [ self arguments size * 2 - 1 ]
		ifEmpty: [ 0 ])