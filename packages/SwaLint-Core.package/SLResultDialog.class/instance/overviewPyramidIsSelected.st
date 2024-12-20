accessing
overviewPyramidIsSelected
	
	^ self testsSelected contains: [ :each | each symbol = #overviewPyramidMetric: ]
