*AST-Core
comments
	"Answer a collection of strings representing the comments in the method. Return an empty collection if the method's source code does not contain a comment."

	^ self ast allChildren flatCollect: [:el| el comments collect: [:c| c contents]]