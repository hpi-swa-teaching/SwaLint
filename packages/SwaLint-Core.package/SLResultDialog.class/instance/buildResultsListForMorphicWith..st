building
buildResultsListForMorphicWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		name: #resultsPanel;
		frame: self resultsFrame;
		children: ({
			aBuilder pluggableScrollPaneSpec new
				name: self overviewPyramidScrollPaneName;
				frame: (self overviewPyramidScrollFrame);
				children: ({
					aBuilder pluggablePanelSpec new
						name: self resultsPanelName;
						frame: (self overviewPyramidFrame);
						yourself.});
				yourself.
			"in background"
			(self buildResultsListWith: aBuilder)
				frame: self resultsFrameInPanel;
				yourself});
		yourself