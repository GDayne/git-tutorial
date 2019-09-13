accessing
selectorAndArgumentNames
	"Returns the selector and argument names portion of a method as a string"

	^ self arguments
		ifEmpty: [ self keywords first ]
		ifNotEmpty: [
			(String streamContents: [ :st | 
				self selectorParts
			 		with: self arguments 
					do: [:sel :arg | 
							st 
								<< sel asString;
								<< ' ';
								<< arg formattedCode;
								<< ' ']]) allButLast ]
								
					