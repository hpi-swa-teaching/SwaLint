pragma-preferences
initializePragmaPreference: aSymbol

	| categories defaultValue helpText projectLocal changeInformee changeSelector type |
	
	categories := self firstPragmaValueNamed: #categories: in: aSymbol. 
	defaultValue := self firstPragmaValueNamed: #defaultValue: in: aSymbol.
	helpText := self firstPragmaValueNamed: #helpText: in: aSymbol.
	projectLocal := self firstPragmaValueNamed: #projectLocal: in: aSymbol.
	changeInformee := self firstPragmaValueNamed: #changeInformee: in: aSymbol.
	changeSelector := self firstPragmaValueNamed: #changeSelector: in: aSymbol.
	type := self firstPragmaValueNamed: #type: in: aSymbol.
	
	self
		addPreference: aSymbol
		categories: categories
		default: defaultValue
		balloonHelp: helpText
		projectLocal: projectLocal
		changeInformee: changeInformee
		changeSelector: changeSelector
		type: type.