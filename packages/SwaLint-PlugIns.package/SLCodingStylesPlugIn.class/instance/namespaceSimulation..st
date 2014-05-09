tests
namespaceSimulation: aSLSystemTestObject

	aSLSystemTestObject shouldBeSystem.
	self testRunner 
		hideTest: #namespaceSimulation;
		addTestToSelection: #nsTotal inCategory: 'Namespace Simulation';
		addTestToSelection: #nsClass inCategory: 'Namespace Simulation';
		addTestToSelection: #nsFreeClasses inCategory: 'Namespace Simulation'.
	^ self booleanResult: true