private
magicNumbers: aSLClassTestObject

	<slTestName: 'Magic numbers'
	description: 'A simple magic number test. Magic numbers defined by this test are all numbers, which are not a -1, 0 or 1 and do not appear as the single value in a return statement or in an assignment. Numbers in strings are ignored'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasMagicNumber:
		satisfying: [:result | result isPositive]