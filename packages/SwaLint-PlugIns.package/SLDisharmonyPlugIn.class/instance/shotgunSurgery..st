tests
shotgunSurgery: aSLMethodTestObject

	<slTestName: 'Shotgun Surgery' 
	description: 'The detection of a Shotgun Surgery means that a change in the detected method implies many changes to a lot of different operations and classes.'>

	aSLMethodTestObject ifClassTestChildrenWith: #shotgunSurgery:.
	aSLMethodTestObject shouldBeMethod.	
	
	^ self successResult: 
		((aSLMethodTestObject resultOf: #methodCM:) > self class ShortMemoryCap and:
		[(aSLMethodTestObject resultOf: #methodCC:) > #many])