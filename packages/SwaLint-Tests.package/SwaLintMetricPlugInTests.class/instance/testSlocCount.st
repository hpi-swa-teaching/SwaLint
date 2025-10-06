tests
testSlocCount

	self
		test: #systemLocCount:
		on: { {SLDummyClass01 . SLDummyClass02 . SLDummyClass03} }
		expectedResults: {40}.