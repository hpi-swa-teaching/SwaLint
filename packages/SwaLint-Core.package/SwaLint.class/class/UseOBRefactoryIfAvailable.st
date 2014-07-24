preferences
UseOBRefactoryIfAvailable

	<slpreference: 'Use OB-Refactory, if available'
	type: #Boolean
	categories: #(SwaLint)
	defaultValue: true
	helpText: 'Use the OB-Refactory browsing if available'
	projectLocal: false
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ UseOBRefactoryIfAvailable ifNil: [true]

	