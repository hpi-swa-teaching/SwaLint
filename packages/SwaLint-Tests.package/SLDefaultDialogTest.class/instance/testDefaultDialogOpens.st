tests
testDefaultDialogOpens
	"We want to test that the default dialog can be build and the main functionality is there."
	|dialog|
	dialog := SLDefaultDialog open.
	dialog selectAllCategories.
	dialog testsSelected: {SLTestData newFromArray: {#unreferencedVariable: . 'unreferencedVariable' . '' . ''. SLSwaMetricsPlugIn} plugIn: SLSwaMetricsPlugInTest} asSet.
	dialog classesSelected: {SLCircle} asSet.
	self assert: (dialog runnable) equals: true.
	dialog window closeBoxHit.