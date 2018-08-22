tests
testFormat
	| resultDummy testData |

	testData := SLTestData new
					name: 'SLTestData'.
	resultDummy := SLResultListDummy forCategorizer: testData.
	resultDummy testObject: SLSystemTestObject new.

	self assert: 'SLTestData' asText equals: (resultDummy format: #tests).
	self assert: 'Tested System' asText equals: (resultDummy format: #classes).