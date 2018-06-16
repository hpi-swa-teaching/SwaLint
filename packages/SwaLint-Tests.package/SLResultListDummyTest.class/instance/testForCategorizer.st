tests
testForCategorizer
	| resultDummy testData testObject |

	testData := SLTestData new.
	resultDummy := SLResultListDummy forCategorizer: testData.
	self assert: testData equals: resultDummy testData.

	testObject := SLTestObject new.
	resultDummy := SLResultListDummy forCategorizer: testObject.
	self assert: testObject equals: resultDummy testObject.