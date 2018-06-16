tests
testFormat
	| result testData |

	testData := SLTestData new
					name: 'SLTestData'.
	result := SLResult new
				testData: testData;
				testObject: SLSystemTestObject new.

	self assert: '  SLTestData: nil' asText equals: (result format: #classes).
	self assert: '  Tested System: nil' asText equals: (result format: #tests).