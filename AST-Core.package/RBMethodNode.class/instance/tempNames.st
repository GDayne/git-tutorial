accessing
tempNames
	"compatibility method to old MethodNode"
	self deprecated: 'This method was flagged for cleaning. We have the impression it might not be used so we are deprecating it. If you encounter this deprecation, please report with the scenario to reproduce.'.
	^ self argumentNames, self temporaryNames