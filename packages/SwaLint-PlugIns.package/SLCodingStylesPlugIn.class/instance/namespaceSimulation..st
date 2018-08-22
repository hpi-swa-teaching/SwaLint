tests
namespaceSimulation: aSLSystemTestObject

	<slTestName: 'Namespace Simulation'
	description: 'Within a project, all classes should start with a prefix.' >

	aSLSystemTestObject shouldBeSystem.
	self testRunner 
		hideTest: #namespaceSimulation:;
		addTestToSelection: #nsTotal: inCategory: 'Coding Styles';
		addTestToSelection: #nsClass: inCategory: 'Coding Styles';
		addTestToSelection: #nsFreeClasses: inCategory: 'Coding Styles'.
	^ self booleanResult: true