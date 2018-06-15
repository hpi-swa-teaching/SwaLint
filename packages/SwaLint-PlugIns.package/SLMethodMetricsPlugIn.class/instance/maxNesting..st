tests
maxNesting: aSLMethodTestObject

	<slTestName: 'Maximum Nesting Level'
	description: nil>

	| max current i c |
	max := 0.
	current := 0.
	i := 0.
	[i := aSLMethodTestObject cleanSource indexOfAnyOf: '[]' asCharacterSet startingAt: i+1.
	 i > 0] whileTrue: [
		c := aSLMethodTestObject cleanSource at: i.
		current := current + ((c = $[) ifTrue: [1] ifFalse: [-1]).
		max := max max: current].
	
	^ self fewManyResult: max