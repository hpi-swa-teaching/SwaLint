actions
autoLint
	
	self runnable ifFalse: [^ self].
	SLTestAutoRunner on: classesSelected with: testsSelected calledBy: (self dependents first) reopens: self.
	self close.
