private-formatting
formatMethodBodyFor: aMethodNode
	self
		indentAround: [ 
			self
				newLine;
				formatMethodCommentFor: aMethodNode;
				formatPragmasFor: aMethodNode;
				visitNode: aMethodNode body ]