list ordering
orderedListFor: aCollection categorizedBy: aSelectorBlock

	| results |
	results := aCollection 
		inject: OrderedCollection new 
		into: [ :collection :each |
			| category |
			category := aSelectorBlock value: each.
			(collection 
				detect: [ :element | element key = category]
				ifNone: [ collection add: (self categorizedListEntryFor: category)])
					value add: each.					
				collection]. 
	results := self flattenCategorizedList: results.
	results ifEmpty: [results add: SLResultListDummy noResults].
	^ results
	
 