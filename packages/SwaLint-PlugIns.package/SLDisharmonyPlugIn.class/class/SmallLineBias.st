preferences
SmallLineBias

	<slpreference: 'Small line bias'
	type: #Numeric
	categories: #(Disharmony)
	defaultValue: 3
	helpText: 'The maximum distance between two exact clones.'>
	
	^ SmallLineBias ifNil: [3].