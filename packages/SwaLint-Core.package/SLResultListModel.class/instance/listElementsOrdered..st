list ordering
listElementsOrdered: aCollection

	^ (listOrdering = #tests) 
		ifTrue: [self testOrderedList: aCollection]
		ifFalse: [self objectOrderedList: aCollection]