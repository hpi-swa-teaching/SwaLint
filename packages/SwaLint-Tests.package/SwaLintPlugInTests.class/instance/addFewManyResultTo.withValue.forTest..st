building
addFewManyResultTo: aSLTestObject withValue: aValue forTest: aTest

	aSLTestObject results add:
			((aSLTestObject testData: aTest) -> (self fewManyResultWithValue: aValue)).