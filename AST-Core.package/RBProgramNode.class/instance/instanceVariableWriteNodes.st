querying
instanceVariableWriteNodes
		^self variableWriteNodes select: [:each | each isInstance]