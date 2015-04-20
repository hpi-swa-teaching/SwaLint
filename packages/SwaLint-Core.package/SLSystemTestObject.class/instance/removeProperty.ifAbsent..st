properties
removeProperty: aKey ifAbsent: aBlock
	
	^ self properties removeKey: aKey ifAbsent: aBlock
