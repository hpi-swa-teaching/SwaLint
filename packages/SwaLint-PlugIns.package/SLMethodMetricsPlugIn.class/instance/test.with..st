tests
test: aSLTestObject with: aSLTestData
	"All of my tests are for methods only."

	aSLTestObject ifClassTestChildrenWith: aSLTestData.
	aSLTestObject shouldBeMethod.