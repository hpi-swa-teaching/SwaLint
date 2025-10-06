preferences
MarkLongRuntimeTests

	<slpreference: 'Mark long runtime tests'
	categoryList: #(SwaLint)
	description: 'Mark long runtime tests.'
	type: #Boolean
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ MarkLongRuntimeTests ifNil: [true]

	