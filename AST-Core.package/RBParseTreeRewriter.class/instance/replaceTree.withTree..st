replacing
replaceTree: searchTree withTree: replaceTree 
	"Add a replacement between a given tree and a replacement tree. To get the replacement executed invoke executeTree: method."
	
	self addRule: (RBStringReplaceRule searchForTree: searchTree
				replaceWith: replaceTree)