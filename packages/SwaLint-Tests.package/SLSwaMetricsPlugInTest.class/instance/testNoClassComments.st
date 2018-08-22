testing
testNoClassComments

	self 
		test: #noClassComments:
		on: {SLDummyClass0. SLDummyClass04}
		expectedResults: {true. false}