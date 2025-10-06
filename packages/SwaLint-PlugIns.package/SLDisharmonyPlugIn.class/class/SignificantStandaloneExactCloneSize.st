preferences
SignificantStandaloneExactCloneSize

	<slpreference: 'Significant standalone Exact clone size'
	categoryList: #(Disharmony)
	description: 'The siginificant size of exact standalone clones.'
	type: #Number>
	
	^ SignificantStandaloneExactCloneSize ifNil: [ 7 ]