tests
numberOfInstanceMethods: aSLClassTestObject
	"Answer the number of instance methods defined in the argument"
	
	^ self integerResult:
		aSLClassTestObject instanceMethods size