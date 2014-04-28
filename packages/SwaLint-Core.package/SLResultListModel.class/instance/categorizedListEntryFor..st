list ordering
categorizedListEntryFor: aCategory

	^ aCategory -> (OrderedCollection with: (SLResultListDummy forCategorizer: aCategory))
