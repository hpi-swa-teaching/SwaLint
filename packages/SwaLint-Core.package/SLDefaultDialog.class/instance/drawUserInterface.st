displaying
drawUserInterface
	"Draw my default user interface. Called by initialization method."

	| buttonBar |
	buttonBar := self createButtonBarWithNextButton: self runButton.
	
	(self window)
		reset;
		addMorph: (self environment classCategories listMorph) 
			fullFrame: (LayoutFrame fractions: (0.0 @ 0.0 extent: 0.25 @ 1)
				offsets: (0 @ 0 corner: 0 @ -30));
		addMorph: (self environment classes listMorph)
			fullFrame: (LayoutFrame fractions: (0.25 @ 0.0 extent: 0.25 @ 1)
					offsets: (0 @ 0 corner: 0 @ -30));
		addMorph: (self environment testCategories listMorph)
			fullFrame: (LayoutFrame fractions: (0.5 @ 0.0 extent: 0.5 @ 0.5));
		addMorph: (self environment tests listMorph)
			fullFrame: (LayoutFrame fractions: (0.5 @ 0.5 extent: 0.5 @ 0.5)
				offsets: (0 @ 0 corner: 0 @ -30));
		addMorph: buttonBar
			fullFrame: (LayoutFrame fractions: (0 @ 1 corner: 1 @ 1)
				offsets: (0 @ -35 corner: 0 @ 0)).

	self removeStyle: buttonBar.