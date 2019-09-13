I'm a visitor that generates code whose execution will recreate the visited node (similarly to storeOn: protocol).
This is handy because we can simply serialize the object in a textual form without requiring a separate parser.

I'm used by reflexivity.

try me! 
(RBDumpVisitor >> #stream) ast dump

Instance Variables
	stream:		<Object>		The stream holding the output. Filled up throughout the visit.

