test selections
testObjectsSelectedForTestRun
	
	^ self originalTestObjects collect: [ :element |
		element testObject as: SLTestObject]