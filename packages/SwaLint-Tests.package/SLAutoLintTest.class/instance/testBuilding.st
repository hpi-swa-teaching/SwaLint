as yet unclassified
testBuilding

	"|classes tests autoLinter|
	classes := {SLCircle} asSet.
	tests := {SLTestData newFromArray: {#unreferencedVariable: . '' . '' . ''. SLSwaMetricsPlugIn} plugIn: SLSwaMetricsPlugInTest} asSet.
	autoLinter := SLTestAutoRunner on: classes with: tests calledBy: nil reopens: nil.
	autoLinter window closeBoxHit."