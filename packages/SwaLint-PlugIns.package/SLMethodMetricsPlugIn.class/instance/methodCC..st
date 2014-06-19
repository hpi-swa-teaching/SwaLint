tests
methodCC: aSLMethodTestObject

	| callers callingClasses |

	callers := aSLMethodTestObject resultOf: #methodCallers.
	callingClasses := (callers itemsCollect: [ :each | each parent ]) asSet.
	^ self fewManyResult: callingClasses size