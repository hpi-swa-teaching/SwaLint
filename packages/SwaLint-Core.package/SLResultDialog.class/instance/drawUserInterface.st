displaying
drawUserInterface
	"Draw my default user interface. Called by initialization method."

	| buttonBar resultsPane |
	buttonBar := self createResultButtonBar.
	resultsPane := self environment results listMorph.
	
	(self window)
		reset;
		addMorph: (self environment classCategories listMorph) 
			fullFrame: (LayoutFrame fractions: (0.0 @ 0.0 extent: 0.25 @ 0.6));
		addMorph: (self environment classes listMorph)
			fullFrame: (LayoutFrame fractions: (0.25 @ 0.0 extent: 0.25 @ 0.6));
		addMorph: (self environment testCategories listMorph)
			fullFrame: (LayoutFrame fractions: (0.5 @ 0.0 extent: 0.5 @ 0.3));
		addMorph: (self environment tests listMorph)
			fullFrame: (LayoutFrame fractions: (0.5 @ 0.3 extent: 0.5 @ 0.3));
		addMorph: resultsPane
			fullFrame: (LayoutFrame fractions: (0.0 @ 0.6 extent: 1 @ 0.4)
				offsets: (0 @ 0 corner: 0 @ self buttonBarLayoutHeight));
		addMorph: buttonBar
			fullFrame: (LayoutFrame fractions: (0 @ 1 corner: 1 @ 1)
				offsets: (0 @ self buttonBarLayoutHeight corner: 0 @ 0)).

	resultsPane addDependent: self.  
	self removeStyle: buttonBar.