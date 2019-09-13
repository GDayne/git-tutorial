replacing
replace: searchString with: replaceString 
   "Add a new replace pattern. To get the replacement executed invoke executeTree: method."

	self addRule: (RBStringReplaceRule searchFor: searchString
				replaceWith: replaceString)