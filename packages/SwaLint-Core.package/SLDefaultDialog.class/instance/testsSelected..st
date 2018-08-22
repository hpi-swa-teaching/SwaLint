accessing
testsSelected: aSet

	testsSelected := aSet.
	self changed: #testSelected; changed: #runnable.