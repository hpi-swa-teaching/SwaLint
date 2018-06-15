building
testsFrame

	^ LayoutFrame new
		leftFraction: self classesRight offset: 0;
		topFraction: self testCategoriesBottom offset: 0;
		rightFraction: self testCategoriesRight offset: 0;
		bottomFraction: self categoriesBottom offset: 0