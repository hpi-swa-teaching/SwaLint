building
buildResultsListForMorphicWith: aBuilder

	^ resultPanel := aBuilder pluggablePanelSpec new
		frame: self resultsFrame;
		children: ({
			(self buildResultsListWith: aBuilder)
				frame: self resultsFrameInPanel;
				yourself.
			aBuilder pluggableScrollPaneSpec new
				name: self overviewPyramidScrollPaneName;
				frame: (self overviewPyramidScrollFrame);
				children: ({
					aBuilder pluggablePanelSpec new
						name: self resultsPanelName;
						frame: (self overviewPyramidFrame);
						yourself.});
				yourself})