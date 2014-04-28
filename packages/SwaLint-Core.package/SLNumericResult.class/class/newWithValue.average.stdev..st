instance creation
newWithValue: aValue average: avg stdev: stdev

	^ self 
		newWithValue: aValue 
		low: (avg - stdev) 
		high: (avg + stdev)