*SwaLintBrowser-Core-converting
asSL2ResultsFor: aSL2Test

	^ Array streamContents: [:stream |
		self testObject isClass ifTrue:
			[(self testObject instanceMethods , self testObject classMethods)
				select: [:testMethod | self selectForSummary: testMethod]
				thenDo: [:testMethod |
					stream nextPut:
						(testMethod asSL2ResultFor: aSL2Test with:
							(testMethod resultOf: self summarizedTest))].
			(self testObject variables
				anySatisfy: [:testMethod | self selectForSummary: testMethod])
					ifTrue:
						[stream nextPut:
							(self testObject asSL2ResultFor: aSL2Test with: self)]].
		
		self testObject isSystem ifTrue:
			[(self testObject allClasses , self testObject categories)
				select: [:each | self selectForSummary: each]
				thenDo: [:each |
					stream nextPut:
						(each asSL2ResultFor: aSL2Test with:
							(each resultOf: self summarizedTest))]]]