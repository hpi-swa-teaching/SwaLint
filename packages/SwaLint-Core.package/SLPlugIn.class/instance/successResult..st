results
successResult: aBoolean
	"Answer a SLBooleanResult, but we only care if the test result is positive"

	^ (self booleanResult: aBoolean) showOnlyIfTrue