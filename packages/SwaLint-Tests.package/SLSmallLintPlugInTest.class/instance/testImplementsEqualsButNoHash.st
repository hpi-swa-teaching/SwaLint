testing
testImplementsEqualsButNoHash
	"I am an representative test. If I am carried out successfull the whole plugin works. (Optimistic assumtion)"

	self 
		test: #smallLintDefinesEqualNotHash
		on: {SLEqualsButNoHash}
		expectedResults: {1}.
