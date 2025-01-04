tests
instanceVariableAccessIsConsistent: aSLClassTestObject
	
	<slTestName: 'Instance var access'
	description:  'Checks for consistent access to instance variables. Direct access to instance variables is a bad practice. You should rather use "self <instanceVariableName>" to access it.'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #instanceVariableAccess:
		satisfying: [:result | result isPositive]
