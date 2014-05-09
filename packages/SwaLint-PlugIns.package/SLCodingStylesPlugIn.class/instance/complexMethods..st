tests
complexMethods: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #isComplexMethod