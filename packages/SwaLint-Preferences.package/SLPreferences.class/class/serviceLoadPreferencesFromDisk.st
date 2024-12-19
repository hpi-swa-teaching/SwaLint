support - file list services
serviceLoadPreferencesFromDisk
	^ SimpleServiceEntry 
		provider: self 
		label: 'load SwaLint preferences from a saved file'
		selector: #restorePreferencesFromDisk:
		description: 'restore all saved personal SwaLint preference settings'
		buttonLabel: 'load SwaLint preferences'