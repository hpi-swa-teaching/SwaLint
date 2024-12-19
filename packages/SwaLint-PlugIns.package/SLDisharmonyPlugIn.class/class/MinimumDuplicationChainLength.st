preferences
MinimumDuplicationChainLength
	
	<slpreference: 'Minimum duplication chain length'
	categoryList: #(Disharmony)
	description: 'The minimum length of the duplication chain.'
	type: #Numeric>
	
	^ MinimumDuplicationChainLength ifNil: [ 9 ]