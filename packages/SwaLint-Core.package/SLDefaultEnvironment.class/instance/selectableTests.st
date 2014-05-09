accessing
selectableTests

	^ testCategories selectedItems 
		inject: OrderedCollection new 
		into: [ :list :each |
			list addAll: (SwaLint testsAtCategory: each); 
				yourself]