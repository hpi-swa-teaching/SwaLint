as yet unclassified
testAutomaticUpdate

	|classes tests autoLinter|
	classes := {self testAutomaticUpdateClass} asSet.
	tests := {SLTestData newFromArray: {#unreferencedVariable: . 'unreferencedVariable' . '' . ''. SLSwaMetricsPlugIn} plugIn: SLSwaMetricsPlugInTest} asSet.
	autoLinter := SLTestAutoRunner basicOn: classes with: tests calledBy: nil reopens: nil.
	self assert: autoLinter resultCount = ' ? '.
	autoLinter run.
	self assert: autoLinter resultCount = ' 0 '.
	self testAutomaticUpdateClass addInstVarName: 'unreferencedTestVariable'.
	self assert: autoLinter resultCount = ' 1 '.
	self testAutomaticUpdateClass removeInstVarName: 'unreferencedTestVariable'.
	self assert: autoLinter resultCount = ' 0 '.
	
	autoLinter toggleAutoLint.
	self testAutomaticUpdateClass addInstVarName: 'unreferencedTestVariable'.
	self assert: autoLinter resultCount = ' 0 '.
	autoLinter run.
	self assert: autoLinter resultCount = ' 1 '.
	self testAutomaticUpdateClass removeInstVarName: 'unreferencedTestVariable'.