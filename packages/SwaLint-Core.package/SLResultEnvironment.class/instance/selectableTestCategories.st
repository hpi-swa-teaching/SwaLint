accessing
selectableTestCategories

	^ (self showableTests 
		inject: Set new into: [ :set :each | 
			set add: each category;
				yourself])
		asSortedCollection