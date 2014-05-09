accessing
findCategory: aCategory

	^ self categories 
		detect: [ :any | any testObject = aCategory ]
		ifNone: [self addCategory: 
			(SLCategoryTestObject newFrom: aCategory)]