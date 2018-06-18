building
buttonsFrame

	^ LayoutFrame new
		leftFraction: self buttonsLeft offset: 0;
		topFraction: self buttonsTop offset: self buttonsOffsetTop + 5;
		rightFraction: self buttonsRight offset: 0;
		bottomFraction: self buttonsBottom offset: 0