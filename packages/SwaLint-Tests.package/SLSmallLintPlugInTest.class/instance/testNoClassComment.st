testing
testNoClassComment

	self 
		test: #smallLintNoClassComment
		on: {SLTestNoClassCommentFail. SLTestNoClassCommentPass}
		expectedResults: {1. 0}.
