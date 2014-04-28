preparing
dataFromEnvironment: aSLEnvironment

	self
		selectedTests: aSLEnvironment testsSelectedForTestRun;
		testSystem: (SLSystemTestObject 
			newFromTestObjects: aSLEnvironment testObjectsSelectedForTestRun).