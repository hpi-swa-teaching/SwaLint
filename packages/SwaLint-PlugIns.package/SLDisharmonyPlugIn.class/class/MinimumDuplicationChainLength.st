preferences
MinimumDuplicationChainLength
	
	<slpreference: 'Minimum duplication chain length'
	type: #Numeric
	categories: #(Disharmony)
	defaultValue: 9
	helpText: 'The minimum length of the duplication chain.'>
	
	^ MinimumDuplicationChainLength ifNil: [ 9 ]