accessing - toolbuilder
childrenForTestCategory: aTestCategory

	| categories leaves |
	categories := (self displayedTestCategories select: [:category | category parent == aTestCategory])
		sorted: #sortKey ascending undefinedLast , #anyTitle ascending.
	leaves := (self displayedTests select: [:test | test categories includes: aTestCategory])
		sorted: #title ascending.
	^ categories , leaves