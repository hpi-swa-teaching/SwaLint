initialize-release
selectableTests

	^ testCategories selectedItems 
		inject: OrderedCollection new 
		into: [ :list :each |
			list addAll: (self testsAtCategory: each); 
				yourself]