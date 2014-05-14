building
buildEmptyClassTestObject
	
	|classTestObject|
	
	classTestObject := (SLClassTestObject new)
				parent: testSystem;
				testObject: SwaLintDisharmonyTests.
	classTestObject fetchMethods.
	classTestObject methods removeAll.
	
	^classTestObject