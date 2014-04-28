initializing
addClass: aSLClassTestObject
	
	| category |
	category := self findCategory: aSLClassTestObject testObject category.
	category addClass: aSLClassTestObject.
	self allMethods: nil.
	^ self allClasses add: aSLClassTestObject