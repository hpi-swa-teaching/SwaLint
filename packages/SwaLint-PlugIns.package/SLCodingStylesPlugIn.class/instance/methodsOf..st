private
methodsOf: aSLTestObject
	"Expects a class, but works for systems too"

	aSLTestObject shouldBeClassOrSystem.
	^ aSLTestObject methods