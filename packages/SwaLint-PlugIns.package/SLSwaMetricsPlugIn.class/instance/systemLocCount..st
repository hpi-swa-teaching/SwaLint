tests
systemLocCount: aSLSystemTestObject

	<slTestName: 'Overall lines of code'
	description: 'Lines of code including blank lines and comments.'>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult:
		(aSLSystemTestObject methods
			inject: 0
			into: [ :total :each | total + (each resultOf: #methodLOC:)])
