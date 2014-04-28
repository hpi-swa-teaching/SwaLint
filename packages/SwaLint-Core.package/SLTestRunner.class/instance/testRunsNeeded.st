progress displaying
testRunsNeeded
	"Answer the number of test runs to get all results"
	
	^ (self selectedTests size * self testObjects size) + 1