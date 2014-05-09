namespace tests
nsDict: aSLSystemTestObject

	| namespaces |
	aSLSystemTestObject shouldBeSystem.
	
	namespaces := Dictionary new.
	aSLSystemTestObject allClasses 
		collect: [ :each | each className]
		thenDo: [ :each |
			(namespaces at: (each first: 2) ifAbsentPut: [OrderedCollection new])
				add: each].
	
	^ self namespaceDictResult: namespaces