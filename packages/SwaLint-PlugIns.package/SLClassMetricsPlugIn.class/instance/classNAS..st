tests
classNAS: aSLClassTestObject

	<slTestName: 'NAS of a class [NAS]'
	description: 'Number of added Services' >
	
	| publicMethods nonOverridingMethods addedServices |
	
	publicMethods := aSLClassTestObject resultOf: #allPublicMethods:.
	nonOverridingMethods := self nonOverridingMethodsOf: aSLClassTestObject.
	addedServices := publicMethods itemsSelect: 
					[ :each | nonOverridingMethods includes: each ].

	^ self integerResult: addedServices size withThresholdFor: #NumberOfMethods