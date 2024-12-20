instance creation
newFor: anException plugIn: aSLPlugIn test: aSLTestData object: aSLTestObject

	^ (self new) 
		exception: anException;
		plugIn: aSLPlugIn test: aSLTestData object: aSLTestObject