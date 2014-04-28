comparing
= aValue
	
	^ self ifThreshold: aValue 
		then: [:t | self threshold = t] 
		else: [super = aValue]