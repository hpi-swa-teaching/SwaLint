tests
testUnnecessaryAssignment
	
	"This check is necessary because older Squeak versions (5.1 or older) do not support getting tempNames of an variable, so this test is disabled. If you have an older Squeak version and run the unneccessary assignment rule, you wil get an ERROR result, which is the intended behavior."
	(CompiledMethod canUnderstand: #tempNames) ifFalse: [^self].
		
	self 
		test: #unnecessaryAssignmentRule:
		on: { SLTestUnnecessaryAssignment01 }
		expectedResults: {1}.

