as yet unclassified
lawOfDemeterRule: aSLClassTestObject

	<slTestName:  'Law of Demeter'
	description: 'The Law of Demeter is a design guideline for developing software and can be succinctly summarized as "Only talk to your immediate friends". The fundamental notion is that a given object should assume as little as possible about the structure or properties of anything else. If long method chains (4 or more methods) are used a lot of system knowledge is hardcoded into a single method and might make reusability difficult.'
	category: 'Intention revealing'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #lawOfDemeterRuleMethod:
		satisfying: [:result | result isPositive ]
