test running
tryTest: aSLTestObject with: aTest
	"Try to run the test on the test object"
	
	^ self tryRunning: [
		self runTest: aTest on: aSLTestObject]
		