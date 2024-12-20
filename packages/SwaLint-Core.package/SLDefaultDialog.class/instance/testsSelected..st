accessing
testsSelected: aSet

	testsSelected := aSet.
	self changed: #testsSelected; changed: #testAt:; changed: #runnable.