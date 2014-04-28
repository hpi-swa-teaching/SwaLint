instance creation
newWithValue: aValue low: low high: high

	^ self newWithValue: aValue 
		low: low 
		high: high 
		veryHigh: (1.5 * high)