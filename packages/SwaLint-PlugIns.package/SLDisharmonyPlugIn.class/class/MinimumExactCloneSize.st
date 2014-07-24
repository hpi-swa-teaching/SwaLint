preferences
MinimumExactCloneSize

	<slpreference: 'Minimum exact clone size'
	type: #Numeric
	categories: #(Disharmony)
	defaultValue: 3
	helpText: 'The minimum size of exact clones.'>
	
	^ MinimumExactCloneSize ifNil: [ 3 ]