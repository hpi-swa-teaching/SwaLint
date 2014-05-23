tests
methodCallers: aSLMethodTestObject

	| methods |

	methods := aSLMethodTestObject testSystem allMethods.
	^ self collectionResult: methods select: [ :each | each testObject messages includes: aSLMethodTestObject methodSelector]