observer
reactToChange: aChangedItem

	(self classesSelected includes: aChangedItem itemClass) ifTrue: [
		self run].