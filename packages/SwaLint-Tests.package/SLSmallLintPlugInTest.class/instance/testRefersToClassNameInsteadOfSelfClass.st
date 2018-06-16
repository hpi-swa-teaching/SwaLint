testing
testRefersToClassNameInsteadOfSelfClass
	"I am an representative test. If I am carried out successfull the whole plugin works. (Optimistic assumption)"

	self 
		test: #abstractClass:
		on: { SLDummyClass021}
		expectedResults: {1}.
