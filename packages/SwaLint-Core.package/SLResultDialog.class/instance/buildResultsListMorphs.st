building
buildResultsListMorphs

	| builder specs |
	builder := Project uiManager toolBuilder.
	specs := self buildResultsListMorphsWith: builder.
	specs withIndexDo: [:spec :index |
		spec frame:
			(LayoutFrame fullFrame
				leftFraction: index - 1 / specs size;
				rightFraction: index / specs size;
				yourself)].
	^ specs collect: [:each | each buildWith: builder]