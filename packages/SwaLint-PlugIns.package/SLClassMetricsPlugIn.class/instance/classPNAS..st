tests
classPNAS: aSLClassTestObject
	
	| publicMethods nas |

	publicMethods := aSLClassTestObject resultOf: #allPublicMethods.
	nas := aSLClassTestObject resultOf: #classNAS.

	^ self percentageResult: ((publicMethods itemCount = 0) 
												ifTrue: [0]
												ifFalse: [nas / publicMethods itemCount])