initialize-release
initializePreferences

	SLPreferences 
		addBooleanPreference: #DebugMode 
		categories: {#SwaLint}
		default: false 
		balloonHelp: 'Enables the debug mode of SwaLint.'
		projectLocal: false
		changeInformee: self 
		changeSelector: #refresh.
	SLPreferences
		addBooleanPreference: #WorldMenuEntry 
		categories: {#SwaLint}
		default: true 
		balloonHelp: 'Show SwaLint entry in WorldMenu > open.'
		projectLocal: false
		changeInformee: self 
		changeSelector: #worldMenuPreferenceChanged.
	SLPreferences
		addBooleanPreference: #ColorizeResults 
		categories: {#SwaLint}
		default: true
		balloonHelp: 'Show Colors in the Resultdialog'
		projectLocal: false
		changeInformee: self 
		changeSelector: #refresh.
	SLPreferences
		addBooleanPreference: #UseOBRefactoryIfAvailable 
		categories: {#SwaLint}
		default: true
		balloonHelp: 'Use the OB-Refactory browsing if available'
		projectLocal: false
		changeInformee: self 
		changeSelector: #refresh.
