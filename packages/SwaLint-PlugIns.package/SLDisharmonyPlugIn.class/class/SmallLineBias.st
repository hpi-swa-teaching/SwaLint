preferences
SmallLineBias

	<slpreference: 'Small line bias'
	categoryList: #(Disharmony)
	description: 'The maximum distance between two exact clones.'
	type: #Numeric>
	
	^ SmallLineBias ifNil: [ 3 ]