instance creation
withSystemCategories: categories

	^ self new
		systemCategories: categories;
		classes: (categories gather: [:category |
			SystemOrganizer default listAtCategoryNamed: category]);
		yourself