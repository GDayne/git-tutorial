adding/removing
removeSubtree: aTree

	^ aTree isReturn 
		ifTrue: [ RBParseTreeRewriter 
					 replace: aTree formattedCode
					 with: '' in: self
					 onInterval: aTree sourceInterval ]
		ifFalse: [ RBParseTreeRewriter 
					  replaceStatements: aTree formattedCode
		 			  with: '' in: self
					  onInterval: aTree sourceInterval ]