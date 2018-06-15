accessing-results
resultList

	^ self results collect: [:each | each format: self orderBySymbol]