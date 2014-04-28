instance creation
newFor: anError plugIn: aSLPlugIn test: aSLTestData object: aSLTestObject

	^ (self new) 
		error: anError;
		plugIn: aSLPlugIn test: aSLTestData object: aSLTestObject