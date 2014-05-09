initializing
addMethod: aSLMethodTestObject
	
	| classTO |
	classTO := self findClass: 
		(aSLMethodTestObject testObject methodClass).
	classTO addMethod: aSLMethodTestObject.
	^ self allMethods add: aSLMethodTestObject
	