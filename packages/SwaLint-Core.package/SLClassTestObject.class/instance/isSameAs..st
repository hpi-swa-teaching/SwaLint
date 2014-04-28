comparing
isSameAs: aSLClassTestObject
	"Answer whether I represent the class or a subclass 
	represented by the argument"
	
	^ (self testObject = aSLClassTestObject testObject) or:
		[self inheritsFrom: aSLClassTestObject]