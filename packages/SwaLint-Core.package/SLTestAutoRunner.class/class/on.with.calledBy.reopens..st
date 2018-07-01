as yet unclassified
on: classes with: tests calledBy: aSystemWindow reopens: aSLDialog

	^ self new 
		classesSelected: classes;
		testsSelected: tests;
		callingWindow: aSystemWindow;
		callingDialog: aSLDialog;
		open;
		yourself