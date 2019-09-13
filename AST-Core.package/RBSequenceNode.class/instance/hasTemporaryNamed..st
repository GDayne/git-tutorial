testing
hasTemporaryNamed: aString

	^ temporaries anySatisfy: [ :temp | temp name = aString ]