instance creation
threshold: aValue low: low high: high veryHigh: veryHigh

	^ (aValue <= low) 
		ifTrue: [1 "low"]
		ifFalse: [(aValue < high) ifTrue: [2 "avg"]
		ifFalse: [(aValue < veryHigh) ifTrue: [3 "high"]
		ifFalse: [4 "veryHigh"]]]