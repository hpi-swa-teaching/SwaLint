as yet unclassified
testAutomaticUpdate

	|classes tests autoLinter|
	classes := {self automaticUpdateClass} asSet.
	tests := {SLTestData newFromArray: {#unreferencedVariable: . 'unreferencedVariable' . '' . ''. SLSwaMetricsPlugIn} plugIn: SLSwaMetricsPlugInTest} asSet.
	autoLinter := SLTestAutoRunner basicOn: classes with: tests calledBy: nil reopens: nil.
	self assert: autoLinter resultCount = ' ? '.
	autoLinter run.
	self assert: autoLinter resultCount = ' 0 '.
	self automaticUpdateClass addInstVarName: 'unreferencedTestVariable'.
	self assert: autoLinter resultCount = ' 1 '.
	self automaticUpdateClass removeInstVarName: 'unreferencedTestVariable'.
	self assert: autoLinter resultCount = ' 0 '.
	
	autoLinter toggleAutoLint.
	self automaticUpdateClass addInstVarName: 'unreferencedTestVariable'.
	self assert: autoLinter resultCount = ' 0 '.
	autoLinter run.
	self assert: autoLinter resultCount = ' 1 '.
	self automaticUpdateClass removeInstVarName: 'unreferencedTestVariable'.