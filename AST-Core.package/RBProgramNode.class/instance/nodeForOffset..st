node access
nodeForOffset: anInteger
	| children |
	"choosing the best node on the specific offset"
	children := self children.
	"when we are on a leaf, we take the leaf node"
	(children isEmpty) ifTrue: [ (self sourceInterval includes: anInteger) ifTrue: [^self]].
	"if the node has children then we check the children"
	children do: [:each | (each sourceInterval includes: anInteger) ifTrue: [^each nodeForOffset: anInteger] ].