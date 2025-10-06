preferences
NoDotAfterMethodEnd

	<slpreference: 'No dot after a method end'
	categoryList: #(CodingStyles)
	description: 'If true, dots behind a return statement are a bad thing, if false, they are good.'
	type: #Boolean>
	
	^ NoDotAfterMethodEnd ifNil: [ true ]