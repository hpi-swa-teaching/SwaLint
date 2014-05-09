initializing
addCategory: aCategoryTestObject

	^ self categories add: 
		(aCategoryTestObject
			parent: self;
			yourself)