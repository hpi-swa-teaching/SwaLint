preferences
OrderByTests

	<slpreference: 'Order Results By Tests'
	type: #Boolean
	categories: #(SwaLint)
	defaultValue: true
	helpText: 'Shows results ordered by tests in result dialog on start if enabled. Otherwise results are ordered by classes'
	projectLocal: true
	changeInformee: #SwaLint
	changeSelector: #refresh>

	^ OrderByTests ifNil: [true]

	