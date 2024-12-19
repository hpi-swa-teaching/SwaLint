preferences
MinimumExactCloneSize

	<slpreference: 'Minimum exact clone size'
	categoryList: #(Disharmony)
	description: 'The minimum size of exact clones.'
	type: #Numeric>
	
	^ MinimumExactCloneSize ifNil: [ 3 ]