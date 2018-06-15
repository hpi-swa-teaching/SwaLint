overview-pyramid
getOverviewPyramidResults

	^ (self results detect: 
		[:each | (each testData notNil) and:
			[each testData symbol = #overviewPyramidMetric:] and:
			[(each isMemberOf: SLErrorResult)
				ifFalse: [(each result notNil)]
				ifTrue: [false]]]
		ifNone: SLResult new) result