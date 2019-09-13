visiting
visitSequenceNode: aSequenceNode

	self 
		formatTemporariesFor: aSequenceNode;
		formatCommentsFor: aSequenceNode;
		formatSequenceNodeStatementsFor: aSequenceNode