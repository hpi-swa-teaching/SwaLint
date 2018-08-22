overview-pyramid
createOverviewPyramidMorph: aTool

	| overviewResults |
	overviewResults := self getOverviewPyramidResults.
	overviewResults isNil
		ifFalse: [ self createOverviewPyramidMorphWith: overviewResults and: aTool ]
		ifTrue: [ self hideOverviewPyramid ]