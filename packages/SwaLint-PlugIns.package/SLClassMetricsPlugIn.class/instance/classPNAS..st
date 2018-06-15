tests
classPNAS: aSLClassTestObject

	<slTestName: 'PNAS of a class [PNAS]'
	description: 'Percentage of newly added Services' >
	
	| publicMethods nas |

	publicMethods := aSLClassTestObject resultOf: #allPublicMethods:.
	nas := aSLClassTestObject resultOf: #classNAS:.

	^ self percentageResult: ((publicMethods itemCount = 0) 
												ifTrue: [ 0 ]
												ifFalse: [ nas / publicMethods itemCount ])