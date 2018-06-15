building
categoriesFrame

	^ LayoutFrame new
		leftFraction: self categoriesLeft offset: 0;
		topFraction: self categoriesTop offset: 0;
		rightFraction: self categoriesRight offset: 0;
		bottomFraction: self buttonsTop offset: self categoriesOffsetBottom