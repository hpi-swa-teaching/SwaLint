accessing
testObject: aSLClassTestObject
	"Summary results are only for classes, but may work for systems too."

	aSLClassTestObject shouldBeClassOrSystem.
	^ super testObject: aSLClassTestObject