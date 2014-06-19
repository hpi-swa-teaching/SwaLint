tests
differingLineEndings: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #csMethodLineEnding
		satisfying: [ :result | (result = 1) not ].