testing
test00MethodLineEndingTest

	| emptyResult squeakResult unixResult windowsResult mixResult |
	
	self configureTestDictionaryForLineEndingTest.
	
	emptyResult := (SLMethodMetricsPlugIn new) methodLineEndingHelper: ('').
	squeakResult := (SLMethodMetricsPlugIn new) methodLineEndingHelper: ('foo', Character 						cr, 'bar').
	unixResult := (SLMethodMetricsPlugIn new) methodLineEndingHelper: ('foo', Character lf, 						'bar').
	windowsResult := (SLMethodMetricsPlugIn new) methodLineEndingHelper: ('foo', 						Character cr, Character lf, 'bar').
	mixResult := (SLMethodMetricsPlugIn new) methodLineEndingHelper: ('foo', Character cr, 						Character lf, 'bar', Character cr, '').
	
	self assert: emptyResult equals: 0;
		assert: squeakResult equals: 1;
		assert: unixResult equals: 2;
		assert: windowsResult equals: 3;
		assert: mixResult equals: 4.