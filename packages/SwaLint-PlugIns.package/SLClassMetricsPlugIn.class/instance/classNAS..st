tests
classNAS: aSLClassTestObject
	
	| publicMethods nonOverridingMethods addedServices |
	
	publicMethods := aSLClassTestObject resultOf: #allPublicMethods.
	nonOverridingMethods := self nonOverridingMethodsOf: aSLClassTestObject.
	addedServices := publicMethods itemsSelect: 
					[:each | nonOverridingMethods includes: each].

	^ self integerResult: addedServices size withThresholdFor: #NumberOfMethods