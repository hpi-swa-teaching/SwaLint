namespace tests
nsClass: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self classNamespaceResult: 
		((aSLClassTestObject testSystem resultOf: #nsDict)
			at: aSLClassTestObject className ifAbsent: [nil])