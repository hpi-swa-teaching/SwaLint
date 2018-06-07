as yet unclassified
testInstVarInSubclasses

	self 
		test: #instVarInAllSubclasses
		on: {SLInstVarInSubclassesNotSuperTestClass. SLInstVarInSubclassesSuperTestClass}
		expectedResults: {false . true}.
