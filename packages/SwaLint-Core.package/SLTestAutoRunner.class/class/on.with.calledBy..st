as yet unclassified
on: classes with: tests calledBy: aSystemWindow

	^ self new 
		classesSelected: classes;
		testsSelected: tests;
		callingWindow: aSystemWindow;
		open;
		yourself