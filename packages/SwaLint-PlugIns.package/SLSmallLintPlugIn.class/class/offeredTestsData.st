tests
offeredTestsData

	^ self externalTests 
		select: [ :each | 
			SLPreferences valueOfFlag: each first]
		thenCollect: [ :each |
			(each allButLast) 
				at: 1 modify: [ :symbol | 
					(self defaultCategory withFirstCharacterDownshifted, symbol) asSymbol]; 
				yourself]