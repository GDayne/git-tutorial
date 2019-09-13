replacing
replace: searchString with: replaceString when: aBlock 
	"Add a new replace pattern when condition is true. To get the replacement executed invoke executeTree: method."
	
	self addRule: (RBStringReplaceRule 
				searchFor: searchString
				replaceWith: replaceString
				when: aBlock)