initializing
fromTestObjects: aTestObjectCollection

	selectedTestObjects := aTestObjectCollection asSet.
	selectedTestObjects add: self.
	aTestObjectCollection do: [ :aTestObject |
		self addTestObject: aTestObject].