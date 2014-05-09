results
addResult: aSLResult forTestData: aSLTestData
	"Add the result; aSLTestData must be a test data object
	provided by my test runner. Better use addResult:for:
	for calls from outside"

	aSLResult 
		testObject: self;
		testData: aSLTestData.
	^ self results at: aSLTestData put: aSLResult