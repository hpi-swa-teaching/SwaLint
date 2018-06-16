tests
testIsSetter

	self 
		test: #isSetter:
		on: {	SLAccessorTestClass methodDict at: #initialize.
				SLAccessorTestClass methodDict at: #var1.
				SLAccessorTestClass methodDict at: #var2.
				SLAccessorTestClass methodDict at: #var2withComment.
				SLAccessorTestClass methodDict at: #var2: }
		expectedResults: { false. false. false. false. true}.
