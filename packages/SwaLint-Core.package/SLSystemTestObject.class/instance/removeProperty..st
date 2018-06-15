properties
removeProperty: aKey
	
	^ self removeProperty: aKey ifAbsent: [self error: 'Property not found']