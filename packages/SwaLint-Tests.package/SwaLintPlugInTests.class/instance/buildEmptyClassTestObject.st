building
buildEmptyClassTestObject
	
	|classTestObject|
	
	classTestObject := (SLClassTestObject new)
				parent: testSystem;
				testObject: SwaLintPlugInTests.
	classTestObject fetchMethods.
	classTestObject methods removeAll.
	
	^classTestObject