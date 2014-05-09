private
overridingMethodsOf: aSLClassTestObject

	^ aSLClassTestObject methods 
		collect: [ :each | each methodSelector] 
		thenSelect: [ :each |
			aSLClassTestObject testObject superclass includesSelector: each]
