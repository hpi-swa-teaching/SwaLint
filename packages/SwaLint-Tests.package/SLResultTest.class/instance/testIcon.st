tests
testIcon

	SwaLint ColorizeResults 
		ifTrue: [self assert: (SLResult iconBlank) bits equals: (SLResult new icon) bits]
		ifFalse: [self assert: nil equals: SLResult new icon]