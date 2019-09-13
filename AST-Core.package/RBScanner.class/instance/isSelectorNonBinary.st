testing
isSelectorNonBinary
	"inspect the next line and view as morph"

	"ZnEasy getPng: 'http://www.plantuml.com/plantuml/png/RO-n2i8m48RtUugRXRn0XzBg98wEuX2R4mlNHE8LwTkRL4Xxa2cNx_z2_ki-OgFC4mF8A4nu9QP1GeJRuOx6j7WSlOqBDlXOXy9xVhzipy5Joco-m0vfeoQuP9n2cjFp8PygRJ7_qo259m2ide8REliBBTyGNQa16p9LGUUw1C1_uThk9TBrEl9kdlW7'"

	| state |
	state := #alphaAlone.
	[ characterType = #alphabetic ]
		whileTrue: [ state = #colon
				ifTrue: [ state := #inKeyword ].
			self scanName.
			characterType = #eof
				ifTrue: [ ^ state = #alphaAlone ].
			currentCharacter = $:
				ifTrue: [ state := #colon.
					self step ] ].
	characterType = #eof
		ifTrue: [ ^ state = #colon ].
	^ false

	"Diagram by:
@startuml

title Selector
[*] --> Binary : binary
[*] --> AlphaAlone : alpha
AlphaAlone --> AlphaAlone: alpha
AlphaAlone -d-> Colon : colon
AlphaAlone -> [*] : eof


Colon -> [*] : eof
Colon -> InKeyword : alpha

InKeyword --> InKeyword : alpha
InKeyword --> Colon : colon


Binary --> Binary : binary
Binary --> [*] : eof

@enduml"