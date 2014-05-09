tests
heightOfInheritanceTree: aSLClassTestObject.
	"Answer the length of the path from the class to its deepest subclass."
	
	^ self integerResult:
		(self computeHITRecursively: aSLClassTestObject testObject)