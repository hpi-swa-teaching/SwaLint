preferences
NoDotAfterMethodEnd

	<slpreference: 'No dot after a method end'
	type: #Boolean
	categories: #(CodingStyles)
	defaultValue: true
	helpText: 'If true, dots behind a return statement are a bad thing, if false, they are good.'>
	
	^ NoDotAfterMethodEnd ifNil: [true].