submorphs - root panel
rootPanel
	^BorderedMorph new
		color: Color transparent;
		layoutInset: 10;
		cellInset: 10;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		listCentering: #topLeft;
		cellPositioning: #topLeft;
		addMorphBack: self newSearchPanel;
		addMorphBack: self mainPanel;
		yourself.