tests
testForObject
	| resultDummy testObject |

	testObject := SLTestObject new.
	resultDummy := SLResultListDummy forObject: testObject.
	self assert: testObject equals: resultDummy testObject.