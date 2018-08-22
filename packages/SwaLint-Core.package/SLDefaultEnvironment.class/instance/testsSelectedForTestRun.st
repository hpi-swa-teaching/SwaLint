test selections
testsSelectedForTestRun

	^ self selectedTests
		inject: OrderedCollection new
		into: [ :collection :element |
			collection add: element;
				yourself]