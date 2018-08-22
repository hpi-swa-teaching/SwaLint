methodTests
classNameInSelectorMethod: aMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	|class|
	aMethodTestObject shouldBeMethod.
	class := aMethodTestObject parent testClass.
	((class class isMeta and: [aMethodTestObject classSide]) and: 
		[ (aMethodTestObject testObject selector 
			indexOfSubCollection: class name
			startingAt: 1) > 0 ]) ifTrue: 
		[^self booleanResult: (true)].
	
	^self booleanResult: (false)
