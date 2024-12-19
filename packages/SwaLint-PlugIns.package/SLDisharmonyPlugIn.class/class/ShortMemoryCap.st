preferences
ShortMemoryCap

	<slpreference:'Short memory cap'
	categoryList: #(Disharmony)
	description: 'The number of items, that can be memorized by the short-term memory.'
	type: #Numeric>
	
	^ ShortMemoryCap ifNil: [ 30 ]