building
buildResultsListForMorphicWith: aBuilder

	^ resultPanel := aBuilder pluggablePanelSpec new
		frame: self resultsFrame;
		children: ({
			(self buildResultsListWith: aBuilder)
				frame: self resultsFrameInPanel;
				yourself});
		yourself
				
			"This is commented out to prevent the dialog from showing the , atm, broken pyramid."
			"aBuilder pluggableScrollPaneSpec new
				name: self overviewPyramidScrollPaneName;
				frame: (self overviewPyramidScrollFrame);
				children: ({
					aBuilder pluggablePanelSpec new
						name: self resultsPanelName;
						frame: (self overviewPyramidFrame);
						yourself.});
				yourself"