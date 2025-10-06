actions
exploreSelectedResults

	^ self resultsForTestAndMessageSelection
		exploreWithLabel: ('SwaLint results for {1}' format: {self selectedMessageName})