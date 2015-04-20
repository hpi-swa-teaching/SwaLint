submorphs - main panel
mainPanel
	^mainPanel ifNil: 
		[mainPanel := Morph new
			color: Color transparent;
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			cellInset: 5;
			layoutPolicy: TableLayout new;
			listCentering: #topLeft;
			listDirection: #leftToRight;
			cellPositioning: #topLeft;
			clipSubmorphs: true;
			on: #mouseEnter send: #paneTransition: to: self;
			addMorphBack: self newCategoryListPanel;
			addMorphBack: self newPreferenceListPanel;
			yourself].