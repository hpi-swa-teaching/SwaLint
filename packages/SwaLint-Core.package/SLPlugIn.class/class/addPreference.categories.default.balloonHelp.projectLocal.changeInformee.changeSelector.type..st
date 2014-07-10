preferences
addPreference: aName categories: categoryList default: aValue balloonHelp: helpString projectLocal: localBoolean changeInformee: informeeSymbol changeSelector: aChangeSelector type: aSymbol
"Creates a new preference assigned to this plug in.
type should be one of {#Boolean. #Numeric. #Color. #Font}"

	SLPreferences 
		addPreference: aName
		categories: categoryList
		default:  aValue
		balloonHelp: (helpString ifNil: ['no description']) 
		projectLocal: (localBoolean ifNil: [false])  
		changeInformee: (informeeSymbol "ifNil: [nil]") 
		changeSelector: (aChangeSelector "ifNil: [nil]") 
		viewRegistry: (SLPreferences viewRegisteryFor: aSymbol).