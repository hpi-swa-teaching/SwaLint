instance creation
newFor: aClass test: aTest resultData: aSLResult

	^ (self newForTest: aTest resultData: aSLResult)
		classObject: aClass;
		yourself