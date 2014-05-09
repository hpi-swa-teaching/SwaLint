list ordering
objectOrderedList: aCollection

	^ self 
		orderedListFor: aCollection 
		categorizedBy: [ :element | element testObject]