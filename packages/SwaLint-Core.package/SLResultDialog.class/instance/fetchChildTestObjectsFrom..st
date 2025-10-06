updating
fetchChildTestObjectsFrom: aSLTestObject

	| result |
	result := Set new.
	result add: aSLTestObject.
	aSLTestObject children do: [ :each | 
		result addAll: (self fetchChildTestObjectsFrom: each)].
	
	^ result