visiting
visitLiteralValueNode: aRBLiteralValueNode
	"Redirect the message by default to #visitLiteralNode: for retrocompatibility (pharo 8)"

	^ self visitLiteralNode: aRBLiteralValueNode