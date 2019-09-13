private-formatting
formatBlock: aBlockNode
	self 
		formatBlockArgumentsFor: aBlockNode;
		space;
		visitNode: aBlockNode body;
		space

