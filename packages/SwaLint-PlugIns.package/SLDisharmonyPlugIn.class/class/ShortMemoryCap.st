preferences
ShortMemoryCap

	<slpreference:'Short memory cap'
	type: #Numeric
	categories: #(Disharmony)
	defaultValue: 3
	helpText: 'The number of items, that can be memorized by the short-term memory.'>
	
	^ ShortMemoryCap ifNil: [3].