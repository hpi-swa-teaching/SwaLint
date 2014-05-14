building
buildBrainMethodFor: aSLClassTestObject

	|brainMethod|
	
	brainMethod := (SLMethodTestObject new)
				parent: aSLClassTestObject.
	self addBooleanResultTo: brainMethod withValue: true forTest: #brainMethod.
	^brainMethod