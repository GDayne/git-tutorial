testing
isSelf
	"normally this method is not needed (if all the RBVariable creations create RBSelfNode instead but
	since we do not control this."
	
	^ self name = 'self'