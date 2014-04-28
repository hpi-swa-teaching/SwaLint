instance creation
newFewMany: aValue

	(aValue < 0) ifTrue: [self error: 'To few...'].
	^ (self 
		newWithValue: aValue 
		andThreshold: ((aValue+1) min: self fewMany size) 
		of: self fewMany) formatAsInteger
	
	