comparing
< aValue

	(aValue isKindOf: self class) ifTrue:
		[^ self < aValue content].
	^ self ifThreshold: aValue 
		then: [:t | self threshold < t] 
		else: [self content < aValue]