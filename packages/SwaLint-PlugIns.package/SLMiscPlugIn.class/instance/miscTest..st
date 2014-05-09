class tests
miscTest: aSLClassTestObject
	
	aSLClassTestObject resultOf: #methodLOC.
	^ self booleanResult: true
	
"	aSLClassTestObject shouldBeClass.
	aSLClassTestObject instanceMethods do: [ :m |
		| x |
		x := (m resultOf: #usedInstVars) value.
		Transcript show: x; cr;cr].
	^ SLBooleanResult newWithValue: true."