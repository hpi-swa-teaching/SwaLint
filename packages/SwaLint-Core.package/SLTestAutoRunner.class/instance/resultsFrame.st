building
resultsFrame

	^ LayoutFrame new
		leftFraction: self buttonsLeft offset: 0;
		topFraction: 0 offset: 0;
		rightFraction: self buttonsRight offset: 0;
		bottomFraction: self buttonsTop offset: self buttonsOffsetTop;
		yourself