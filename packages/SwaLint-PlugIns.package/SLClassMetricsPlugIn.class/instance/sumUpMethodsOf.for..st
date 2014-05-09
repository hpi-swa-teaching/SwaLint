private
sumUpMethodsOf: aSLClassTestObject for: aTest

	^ aSLClassTestObject methods 
		inject: 0
		into: [ :total :each | 
			total + (each resultOf: aTest)]