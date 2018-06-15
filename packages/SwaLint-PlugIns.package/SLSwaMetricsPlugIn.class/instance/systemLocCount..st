tests
systemLocCount: aSLSystemTestObject

	<slTestName: 'Overall lines of code'
	description: nil>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult:
		(aSLSystemTestObject methods
			inject: 0
			into: [ :total :each | total + (each resultOf: #methodLOC:)])
