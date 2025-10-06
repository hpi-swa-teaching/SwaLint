preferences
OrderByTests

	<slpreference: 'Order Results By Tests'
	categoryList: #(SwaLint)
	description: 'Shows results ordered by tests in result dialog on start if enabled. Otherwise results are ordered by classes'
	type: #Boolean
	changeInformee: #SwaLint
	changeSelector: #refresh>

	^ OrderByTests ifNil: [true]

	