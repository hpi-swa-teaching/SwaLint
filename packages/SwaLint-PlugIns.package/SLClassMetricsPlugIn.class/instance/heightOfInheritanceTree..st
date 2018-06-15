tests
heightOfInheritanceTree: aSLClassTestObject

	<slTestName: 'Height of Inheritance Tree [HIT]'
	description: 'Answer the length of the path from a class to its deepest subclass.' >

	^ self integerResult:
		(self computeHITRecursively: aSLClassTestObject testObject)