generation
dump
	"Generate a literal expression that recreates the receiver"

	| visitor |
	visitor := RBDumpVisitor new.
	self acceptVisitor: visitor.
	^ visitor stream contents