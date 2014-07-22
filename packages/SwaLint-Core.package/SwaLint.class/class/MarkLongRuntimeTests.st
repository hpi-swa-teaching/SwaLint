preferences
MarkLongRuntimeTests

	<slpreference: 'Mark long runtime tests'
	type: #Boolean
	categories: #(SwaLint)
	defaultValue: true
	helpText: 'Mark long runtime tests.'
	projectLocal: false
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ MarkLongRuntimeTests ifNil: [true].

	