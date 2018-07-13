accessing
classesSelected: aSet

	classesSelected := aSet.
	self changed: #classesSelected; changed: #runnable.