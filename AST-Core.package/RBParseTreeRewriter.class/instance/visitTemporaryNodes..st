visiting
visitTemporaryNodes: aNodeCollection 
	^aNodeCollection collect: [:each | self visitTemporaryDeclarationNode: each]