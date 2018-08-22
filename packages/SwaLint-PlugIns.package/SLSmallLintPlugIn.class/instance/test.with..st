tests
test: aTestObject with: aTest
	"All the testing initiated by the test runner happens in #prepareForTests:
	andTestObjects: ...but just in case it is not called"
	
	aTestObject shouldBeClass.
	self smallLintTest: aTest onTestObjects: {aTestObject}.
	^ aTestObject resultOf: aTest