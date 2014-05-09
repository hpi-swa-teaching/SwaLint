accessing
selectableTests

	^ self testCategories selectedItems 
		inject: OrderedCollection new 
		into: [ :selectableTests :each |
			selectableTests 
				addAll: (self testsFromCategory: each);
				yourself]