observer
reactToChange: aChangedItem

	(self lintingEnabled 
		and: [self classesSelected includes: aChangedItem itemClass])
		ifTrue: [self run].