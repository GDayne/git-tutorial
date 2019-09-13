properties
propertyAt: aKey ifPresent: aPresentBlock ifAbsent: anAbsentBlock
	"Answer the property value associated with aKey or, if aKey is found, answer the result of evaluating aPresentBlock, else evaluates anAbsentBlock."

	^ properties ifNil: anAbsentBlock ifNotNil: [ properties at: aKey ifPresent: aPresentBlock ifAbsent: anAbsentBlock ]