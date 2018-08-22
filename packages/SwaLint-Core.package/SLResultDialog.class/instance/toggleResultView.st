accessing
toggleResultView

	(Smalltalk isMorphic and: self overviewPyramidIsSelected and: self isOrderedByTests not)
		ifTrue: [ self showOverviewPyramid ]
		ifFalse: [ self hideOverviewPyramid ].