accessing
selectedTests: aCollection

	aCollection do: [ :test | 
		(self testDictionary at: test symbol) markUserSelected].