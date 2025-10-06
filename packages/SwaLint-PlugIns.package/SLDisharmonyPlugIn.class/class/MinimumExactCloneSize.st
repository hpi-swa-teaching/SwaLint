preferences
MinimumExactCloneSize

	<slpreference: 'Minimum exact clone size'
	categoryList: #(Disharmony)
	description: 'The minimum size of exact clones.'
	type: #Number>
	
	^ MinimumExactCloneSize ifNil: [ 3 ]