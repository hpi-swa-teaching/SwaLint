private
addResultDictionaryEntryFor: aDict at: aKey with: aValue and: aCategorizer

	aDict at: aKey ifAbsentPut: [OrderedCollection with: (SLResultListDummy forCategorizer: aCategorizer)].
	(aDict at: aKey) add: aValue.