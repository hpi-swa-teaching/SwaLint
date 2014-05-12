tests
differingLineEndings: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodLineEnding
		satisfying: [ :result | (result = 1) not ].