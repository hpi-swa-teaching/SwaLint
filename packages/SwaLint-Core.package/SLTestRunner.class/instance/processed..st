progress displaying
processed: aTestObject

	self progressBar ifNotNil: [ 
		self progressBar value: (processedItems := processedItems + 1)].
	