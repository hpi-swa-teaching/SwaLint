tests
methodsWithoutSenders: aSLClassTestObject

	<slTestName: 'Methods without senders' 
	description: 'This test detects methods without senders for a given class. Use the SmallLint test ''Methods implemented but not sent'' if you have the chance.'>
	<slTestHidden: false
	longRuntime: true >

	aSLClassTestObject shouldBeClass.

	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasNoSender: 
		satisfying: [ :result | result isPositive ]