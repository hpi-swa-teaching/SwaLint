accessing
displayedTestCategories

	^ (self displayedTests gather: [:test |
		test categories gather: [:category | category withAllParents]])
			asSet