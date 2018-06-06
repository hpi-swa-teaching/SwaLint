tests
offeredTestsData

	^ (self externalTests 
		select: [ :each | 
			SLPreferences valueOfFlag: each first]
		thenCollect: [ :each |
			each
				at: 1 modify: [ :symbol | 
					(self defaultCategory withFirstCharacterDownshifted, symbol) asSymbol]; 
				yourself])
		asOrderedCollection removeAllSuchThat: [: each |
			self excludedTests includes: each first]