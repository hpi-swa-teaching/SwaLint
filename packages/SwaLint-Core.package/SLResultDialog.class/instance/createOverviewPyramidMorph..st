overview-pyramid
createOverviewPyramidMorph: aTool

	| overviewResults |
	overviewResults := self getOverviewPyramidResults.
	(overviewResults = nil)
		ifFalse: [ self createOverviewPyramidMorphWith: overviewResults and: aTool ]
		ifTrue: [ self hideOverviewPyramid ]