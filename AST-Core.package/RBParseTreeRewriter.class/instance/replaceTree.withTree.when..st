replacing
replaceTree: searchTree withTree: replaceTree when: aBlock 
	"Add a replacement between a given tree and a replacement tree when a condition. To get the replacement executed invoke executeTree: method."
	
	self addRule: (RBStringReplaceRule 
				searchForTree: searchTree
				replaceWith: replaceTree
				when: aBlock)