private-scanning
stripComment
	| start stop |
	start := stream position.
	self step.
	characterType = #eof
		ifTrue: [ ^ self scannerError: 'Unmatched " in comment.' ].
	[ currentCharacter = $" and: [ self step ~= $" ] ]
		whileFalse: [ characterType = #eof
				ifTrue: [ ^ self scannerError: 'Unmatched " in comment.' ].
			self step ].
	stop := characterType = #eof
		ifTrue: [ stream position ]
		ifFalse: [ stream position - 1 ].
	comments add: (start to: stop)