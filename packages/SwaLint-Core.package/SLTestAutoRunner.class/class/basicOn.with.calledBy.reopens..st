as yet unclassified
basicOn: classes with: tests calledBy: aSystemWindow reopens: aSLDialog

	^ self new 
		classesSelected: classes;
		testsSelected: tests;
		callingWindow: aSystemWindow;
		callingDialog: aSLDialog;
		createEnvironment;
		yourself