overview-pyramid
createOverviewPyramidMorphWith: aDictionary and: aTool

	overviewpyramidMorph := OverviewPyramidMorph newWithResults: aDictionary.
	(((aTool submorphNamed: self overviewPyramidScrollPaneName) submorphs at: 3)
		submorphNamed: self resultsPanelName)
			addMorph: overviewpyramidMorph.
	self isOrderedByTests
		ifTrue: [ self hideOverviewPyramid ]
		ifFalse: [ self showOverviewPyramid ]