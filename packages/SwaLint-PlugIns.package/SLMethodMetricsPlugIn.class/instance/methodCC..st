tests
methodCC: aSLMethodTestObject

	<slTestName: 'Changing Classes [CC]'
	description: 'Counts number of classes that call this one.'>

	| callers callingClasses |

	callers := aSLMethodTestObject resultOf: #methodCallers:.
	callingClasses := (callers itemsCollect: [ :each | each parent ]) asSet.
	^ self fewManyResult: callingClasses size