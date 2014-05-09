instance creation
newWithValue: aValue low: low high: high veryHigh: veryHigh

	^ self 
		newWithValue: aValue 
		andThreshold: 
			(self threshold: aValue low: low high: high veryHigh: veryHigh)
		of: self highLow