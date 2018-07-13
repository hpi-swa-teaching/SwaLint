observer
reactToChange: anEvent

	(self lintingEnabled 
		and: [self classesSelected includes: anEvent itemClass])
		ifTrue: [self run].