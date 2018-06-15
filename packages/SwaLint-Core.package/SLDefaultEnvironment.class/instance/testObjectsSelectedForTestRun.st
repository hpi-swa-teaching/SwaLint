test selections
testObjectsSelectedForTestRun
	
	^ self selectedClasses collect: [ :element | 
		element as: SLTestObject]
