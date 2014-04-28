results
failureResult: aBoolean
	"Answer a SLBooleanResult, but we only care if the test result is negative"

	^ (self booleanResult: aBoolean) showOnlyIfFalse