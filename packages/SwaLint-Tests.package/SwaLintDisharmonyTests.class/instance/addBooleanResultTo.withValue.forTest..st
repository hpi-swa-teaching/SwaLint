building
addBooleanResultTo: aSLTestObject withValue: aValue forTest: aTest

	aSLTestObject results add:
			((aSLTestObject testData: aTest) -> (self booleanResultWithValue: aValue))