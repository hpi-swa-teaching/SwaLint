test selections
testsSelectedForTestRun

	^ self tests selectedItems 
		inject: OrderedCollection new
		into: [ :collection :element |
			collection add: element;
				yourself]