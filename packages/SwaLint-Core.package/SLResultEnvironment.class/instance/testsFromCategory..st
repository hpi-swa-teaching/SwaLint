accessing
testsFromCategory: aCategory

	^ self showableTests select: [ :test | 
		test category = aCategory]