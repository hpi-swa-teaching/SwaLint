testing
testNoClassComments

	self 
		test: #noClassComments
		on: {SLTestNoClassCommentFail. SLTestNoClassCommentPass}
		expectedResults: {false. true}.