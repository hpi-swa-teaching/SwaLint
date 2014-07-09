preferences
SignificantStandaloneExactCloneSize

	<slpreference: 'Significant standalone Exact clone size'
	type: #Numeric
	categories: #(Disharmony)
	defaultValue: 7
	helpText: 'The siginificant size of exact standalone clones.'>
	
	^ SignificantStandaloneExactCloneSize ifNil: [7].