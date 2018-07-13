namespace tests
nsDict: aSLSystemTestObject

	<slTestName: nil
	description: 'Dictionary class -> namespace' >
	<slTestHidden: true
	longRuntime: nil>

	| namespaces |
	aSLSystemTestObject shouldBeSystem.
	
	namespaces := Dictionary new.
	aSLSystemTestObject allClasses 
		collect: [ :each | each className]
		thenDo: [ :each |
			(namespaces at: (each first: 2) ifAbsentPut: [OrderedCollection new])
				add: each].
	
	^ self namespaceDictResult: namespaces