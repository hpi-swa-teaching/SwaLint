tests
complexMethods: aSLClassTestObject

	<slTestName: 'Complex Methods'
	description: 'Methods with a high nesting or complex structure are hard to understand and maintain and can cause bugs.'>

	aSLClassTestObject shouldBeClass.
	^ self summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #isComplexMethod: