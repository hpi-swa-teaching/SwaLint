accessing
plugIn: aSLPlugIn test: aSLTestData object: aSLTestObject

	errPlugIn := aSLPlugIn.
	errTest := aSLTestData.
	errTestObject := aSLTestObject.
	self test ifNotNil: [
		self messageText: self test symbol asString, ': ',
			self rcvr, ' raised "', error class name asString, '"'].