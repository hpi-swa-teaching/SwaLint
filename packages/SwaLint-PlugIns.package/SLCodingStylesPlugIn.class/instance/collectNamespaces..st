private
collectNamespaces: aSLSystemTestObject

	| namespaces |
	namespaces := Dictionary new.
	aSLSystemTestObject allClasses 
		collect: [ :each | each className]
		thenDo: [ :each |
			(namespaces at: (each first: 2) ifAbsentPut: [OrderedCollection new])
				add: each].	
	^ namespaces