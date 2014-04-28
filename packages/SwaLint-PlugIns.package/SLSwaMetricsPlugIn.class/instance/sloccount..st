tests
sloccount: aSLSystemTestObject

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult:
		(aSLSystemTestObject methods
			inject: 0
			into: [ :total :each | total + (each resultOf: #methodLOC)])
