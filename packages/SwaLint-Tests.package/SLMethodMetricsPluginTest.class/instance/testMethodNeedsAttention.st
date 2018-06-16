testing
testMethodNeedsAttention

	self 
		test: #methodNeedsAttention:
		on: {SLTestMethodsNeedAttention methodDict at: #testMethod1.
			SLTestMethodsNeedAttention methodDict at: #testMethod2.
			SLTestMethodsNeedAttention methodDict at: #testMethod3.
			SLTestMethodsNeedAttention methodDict at: #testMethod4.
			SLTestMethodsNeedAttention methodDict at: #testMethod5.
			SLTestMethodsNeedAttention methodDict at: #testMethod6.
			SLTestMethodsNeedAttention methodDict at: #testMethod7.
			SLTestMethodsNeedAttention methodDict at: #testMethod8.}
		expectedResults: {true. false. false. false. true. false. false. true.}.