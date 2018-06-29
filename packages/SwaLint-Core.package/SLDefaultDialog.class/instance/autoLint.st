actions
autoLint
	
	|autoLinter|
	self runnable ifFalse: [^ self].
	autoLinter := SLTestAutoRunner on: classesSelected with: testsSelected.