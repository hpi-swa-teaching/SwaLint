namespace tests
nsClass: aSLClassTestObject

	<slTestName: 'Namespace'
	description: 'The detected namespace of a class.' >
	<slTestHidden: true
	longRuntime: nil>

	aSLClassTestObject shouldBeClass.
	^ self classNamespaceResult: 
		((aSLClassTestObject testSystem resultOf: #nsDict:)
			at: aSLClassTestObject className ifAbsent: [nil])