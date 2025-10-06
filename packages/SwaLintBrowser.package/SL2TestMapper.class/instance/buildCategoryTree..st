mapping - categories
buildCategoryTree: categories

	| allCategories pendingCategories |
	allCategories := Dictionary withAll: categories.
	pendingCategories := OrderedCollection withAll: categories.
	[pendingCategories isEmpty] whileFalse:
		[| category |
		category := pendingCategories removeFirst.
		allCategories at: category path put: category.
		category path size > 1 ifTrue:
			[| parentPath |
			parentPath := category path allButLast.
			category parent:
				(allCategories at: parentPath ifAbsentPut:
					[pendingCategories addLast:
						(self makeCategoryWithPath: parentPath)])]].
	^ allCategories