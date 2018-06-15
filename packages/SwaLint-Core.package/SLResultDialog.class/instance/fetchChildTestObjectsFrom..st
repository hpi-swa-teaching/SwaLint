updating
fetchChildTestObjectsFrom: aSLTestObject
	| result |
	result := OrderedCollection new.
	result add: aSLTestObject.
	aSLTestObject children do: [ :each | 
		result addAll: (self fetchChildTestObjectsFrom: each)].
	^result