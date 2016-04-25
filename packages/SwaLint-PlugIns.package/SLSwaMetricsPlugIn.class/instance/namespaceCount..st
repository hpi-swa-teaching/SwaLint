tests
namespaceCount: aSLSystemTestObject
	| namespaces assocs |
	aSLSystemTestObject shouldBeSystem.
	namespaces := Dictionary new.
	aSLSystemTestObject allClasses do: [:c |
		1 to: (c name size min: 10) do: [:i |
			(namespaces at: (c name first: i) ifAbsentPut: [Set new])	 add: c]].
	assocs := (((namespaces keys
			sortBy: [:a :b | (namespaces at: a) size > (namespaces at: b) size])
			sortBy: [:a :b | a size < b size])
			collect: [:k |  k -> (namespaces at: k)]).
	^ self collectionResult: ((assocs first: (5 min: assocs size)) reversed collect: [:assoc | assoc key -> assoc value size]) select: [:assoc | assoc value > 1]