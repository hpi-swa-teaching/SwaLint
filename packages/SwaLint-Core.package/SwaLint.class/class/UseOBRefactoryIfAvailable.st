preferences
UseOBRefactoryIfAvailable

	<slpreference: 'Use OB-Refactory, if available'
	categoryList: #(SwaLint)
	description: 'Use the OB-Refactory browsing if available'
	type: #Boolean
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ UseOBRefactoryIfAvailable ifNil: [true]

	