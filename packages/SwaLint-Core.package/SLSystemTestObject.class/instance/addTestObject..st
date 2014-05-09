initializing
addTestObject: aSLTestObject

	aSLTestObject ifClass: [
		self addClass: aSLTestObject].
	aSLTestObject ifMethod: [
		self addMethod: aSLTestObject].