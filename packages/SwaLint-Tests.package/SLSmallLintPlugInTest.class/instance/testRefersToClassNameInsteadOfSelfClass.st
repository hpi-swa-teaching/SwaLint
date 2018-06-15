testing
testRefersToClassNameInsteadOfSelfClass
	"I am an representative test. If I am carried out successfull the whole plugin works. (Optimistic assumtion)"

	self 
		test: #smallLintRefersToClass
		on: {SLDummyClass0. SLDummyClass021}
		expectedResults: {0. 1}.
