progress displaying
processed: aTestObject for: aTest

	self progressBar ifNotNil: [ 
		self progressBar value:
			(aTestObject
				ifNil: [0]
				ifNotNil: [processedItems add: {aTestObject. aTest}; size])].
	