test selections
testObjectsSelectedForTestRun
	
	^ self classes selectedItems collect: [ :element | 
		(Smalltalk at: element) as: SLTestObject]