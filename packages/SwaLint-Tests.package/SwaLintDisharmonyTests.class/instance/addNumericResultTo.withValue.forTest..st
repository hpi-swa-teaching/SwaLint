building
addNumericResultTo: aSLTestObject withValue: aValue forTest: aTest

	aSLTestObject results add:
			((aSLTestObject testData: aTest) -> (self numericResultWithValue: aValue))