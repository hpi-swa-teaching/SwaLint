building
buildResultsListForMorphicWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		name: #resultsPanel;
		frame: self resultsFrame;
		wantsResizeHandles: true;
		model: self;
		children: #buildResultsListMorphs;
		yourself