as yet unclassified
longMethod: aSLClassTestObject

	<slTestName:  'Long Methods (without empty lines)'
	description: 'Checks for long methods. A methd is long if it has more then SLRBImportPlugIn >> longMethodSize (by default 10) statements. This method counts staments and not lines!'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #longMethodMethod:
		satisfying: [:result | result isPositive]
