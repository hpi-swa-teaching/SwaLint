SwaLint
testsAtCategory: aSymbol

	^ (self categoryDict at: aSymbol) collect: [ :test | 
		self testDataFor: test]