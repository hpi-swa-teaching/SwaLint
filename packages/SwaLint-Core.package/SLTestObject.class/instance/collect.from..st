initialization
collect: aSLTestObjectClass from: aCollection

	^ (aCollection collect: [ :each |
		(aSLTestObjectClass newFrom: each)
			parent: self;
			yourself]) asSortedCollection