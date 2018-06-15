testing
testStringExclusion
	
	| originalString resultString testPlugin |
	
	testPlugin := SLSwaMetricsPlugIn new.
	
	originalString := 'addCommentsTo: aNode
	aNode comments: ''aNode comments'' , comments.
	bla := ''10.1''.
	^ 42'.
	
	resultString := 'addCommentsTo: aNode
	aNode comments:  , comments.
	bla := .
	^ 42'.
	
	self assert: (testPlugin removeStringsFrom: originalString) equals: resultString.