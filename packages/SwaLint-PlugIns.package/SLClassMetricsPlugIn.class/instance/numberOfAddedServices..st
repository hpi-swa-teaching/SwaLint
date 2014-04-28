tests
numberOfAddedServices: aSLClassTestObject
	"Answer the number of methods in the class that are not overridden 
	or specialized from the ancestor classes."
	
	^ (self summarizeNumberOf: aSLClassTestObject methods 
			withResultOf: #isAddedService)
		formatAsInteger; showAlways