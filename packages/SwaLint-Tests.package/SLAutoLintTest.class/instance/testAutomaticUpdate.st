as yet unclassified
testAutomaticUpdate

	|classes tests autoLinter|
	classes := {SLCircle} asSet.
	tests := {SLTestData newFromArray: {#unreferencedVariable: . 'unreferencedVariable' . '' . ''. SLSwaMetricsPlugIn} plugIn: SLSwaMetricsPlugInTest} asSet.
	autoLinter := SLTestAutoRunner basicOn: classes with: tests calledBy: nil reopens: nil.
	self assert: autoLinter resultCount = ' ? '.
	autoLinter run.
	self assert: autoLinter resultCount = ' 0 '.
	SLCircle addInstVarName: 'unreferencedTestVariable'.
	self assert: autoLinter resultCount = ' 1 '.
	SLCircle removeInstVarName: 'unreferencedTestVariable'.
	self assert: autoLinter resultCount = ' 0 '.
	
	autoLinter toggleAutoLint.
	SLCircle addInstVarName: 'unreferencedTestVariable'.
	self assert: autoLinter resultCount = ' 0 '.
	autoLinter run.
	self assert: autoLinter resultCount = ' 1 '.
	SLCircle removeInstVarName: 'unreferencedTestVariable'.