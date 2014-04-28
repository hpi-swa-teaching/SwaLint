list ordering
testOrderedList: aCollection

	^ self 
		orderedListFor: aCollection 
		categorizedBy: [ :element | element testData]