tests
testForTest
	| resultDummy testData |

	testData := SLTestData new.
	resultDummy := SLResultListDummy forTest: testData.
	self assert: testData equals: resultDummy testData.