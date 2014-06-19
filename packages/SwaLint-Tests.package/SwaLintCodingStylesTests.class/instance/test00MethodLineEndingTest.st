testing
test00MethodLineEndingTest

	| emptyResult squeakResult unixResult windowsResult mixResult |
	
	self configureTestDictionaryForLineEndingTest.
	
	emptyResult := plugIn methodLineEndingHelper: ('').
	squeakResult := plugIn methodLineEndingHelper: ('foo', Character cr, 'bar').
	unixResult := plugIn methodLineEndingHelper: ('foo', Character lf, 'bar').
	windowsResult := plugIn methodLineEndingHelper: ('foo', Character cr, Character lf, 'bar').
	mixResult := plugIn methodLineEndingHelper: ('foo', Character cr, Character lf, 'bar', Character cr, 'baz').
	
	self assert: emptyResult equals: 0;
		assert: squeakResult equals: 1;
		assert: unixResult equals: 2;
		assert: windowsResult equals: 3;
		assert: mixResult equals: 4.