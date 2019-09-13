*AST-Core
parseTree
	"returns an AST for this method, do not cache it. (see #ast for the cached alternative)"
	^(RBParser 
		parseMethod: self sourceCode 
		onError: [ :msg :pos | 
			^ self decompile ]) methodClass: self methodClass.