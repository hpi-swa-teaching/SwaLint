building
buildResultsListMorphsWith: aBuilder

	^ Array streamContents: [:stream |
		stream nextPut:
			(self buildResultsListWith: aBuilder).
		self isOrderedByTests ifFalse: [
			(self buildOverviewPyramidWith: aBuilder) ifNotNil: [:pyramid |
				stream nextPut: pyramid]]]