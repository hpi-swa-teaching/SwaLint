accessing
valueStringOrText

	self test testData key = #overviewPyramidMetric ifTrue:
		[self resultData isError ifFalse:
			[| results |
			results := self resultData value.
			^ Text string: Character startOfHeader asString attribute:
				(OverviewPyramidMorph newWithResults: results) asContainer asTextAnchor]].
	^ super valueStringOrText