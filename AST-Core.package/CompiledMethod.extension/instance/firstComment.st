*AST-Core
firstComment
	"Answer a string representing the first comment in the method associated with selector. Return an empty string if the method's source code does not contain a comment."

	^ self comments ifEmpty: [ #() ] ifNotEmpty: [ :comments | comments first ]