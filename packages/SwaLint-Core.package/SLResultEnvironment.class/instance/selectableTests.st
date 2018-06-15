accessing
selectableTests

	^ self testCategories 
		inject: OrderedCollection new 
		into: [ :selectableTests :each |
			selectableTests 
				addAll: (self testsFromCategory: each);
				yourself]