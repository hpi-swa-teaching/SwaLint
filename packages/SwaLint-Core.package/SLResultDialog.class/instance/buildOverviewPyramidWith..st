building
buildOverviewPyramidWith: aBuilder

	| overviewResults pyramid |
	overviewResults := self getOverviewPyramidResults ifNil: [^ nil].
	pyramid := OverviewPyramidMorph newWithResults: overviewResults.
	
	^ aBuilder pluggableScrollPaneSpec new
		name: self overviewPyramidScrollPaneName;
		morph: (pyramid asContainerWithPadding: 20 px);
		yourself