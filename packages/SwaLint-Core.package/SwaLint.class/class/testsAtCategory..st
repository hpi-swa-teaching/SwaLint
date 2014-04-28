accessing
testsAtCategory: aSymbol

	^ (self categories at: aSymbol) collect: [ :test | 
		self testDataFor: test]