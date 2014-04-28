preparing
testsFrom: aTestsOrTestSymbolCollection

	^ aTestsOrTestSymbolCollection collect: [ :testOrSymbol |
			self testDataFor: testOrSymbol]