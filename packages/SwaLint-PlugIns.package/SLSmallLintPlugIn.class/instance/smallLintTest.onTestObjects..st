smalllint
smallLintTest: aTest onTestObjects: aCollection
	"Carry out SmallLintTest identified by aTestSymbol on 
	aCollection"
	
	| result instMethods clsMethods |	
	result := self 
		smallLintTestResultFor: aTest
		onTestObjects: aCollection.
	
	aCollection do: [ :each |
		instMethods := result selectorsForClass: each testObject.
		clsMethods := result selectorsForClass: each testObject class.
		
		self 
			addBoolResultsToAll: each methods in: instMethods for: aTest;
			addBoolResultsToAll: each classMethods in: clsMethods for: aTest;
			addSummaryResultTo: each for: aTest value: (clsMethods size + instMethods size)].