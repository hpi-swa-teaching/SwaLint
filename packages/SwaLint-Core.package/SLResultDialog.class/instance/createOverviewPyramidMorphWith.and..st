overview-pyramid
createOverviewPyramidMorphWith: aDictionary and: aTool

	overviewpyramidMorph := OverviewPyramidMorph newWithResults: aDictionary.
	(((aTool submorphNamed: self overviewPyramidScrollPaneName) morph)
		submorphNamed: self resultsPanelName)
			addMorph: overviewpyramidMorph.
	self isOrderedByTests
		ifTrue: [ self hideOverviewPyramid ]
		ifFalse: [ self showOverviewPyramid ]