building
classesFrame

	^ LayoutFrame new
		leftFraction: self categoriesRight offset: 0;
		topFraction: self classesTop offset: 0;
		rightFraction: self classesRight offset: 0;
		bottomFraction: self buttonsTop offset: self categoriesOffsetBottom