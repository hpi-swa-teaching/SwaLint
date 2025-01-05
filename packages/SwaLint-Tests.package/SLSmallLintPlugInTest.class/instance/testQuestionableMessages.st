tests
testQuestionableMessages
	"I am an representative test. If I am carried out successfull the whole plugin works. (Optimistic assumtion)"

	self 
		test: #smallLintBadMessage
		on: {SLTestQuestionableMessageClass}
		expectedResults: {3}.
