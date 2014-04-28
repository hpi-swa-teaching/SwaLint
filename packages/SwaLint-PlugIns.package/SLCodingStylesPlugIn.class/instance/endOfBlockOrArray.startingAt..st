private
endOfBlockOrArray: aString startingAt: anInteger

	| n |
	n := anInteger.
	[n := aString indexOfAnyOf: '[]{}$' asCharacterSet startingAt: n+1.
	 (n = 0) ifTrue: [^ aString size].
	 '[{$' anySatisfy: [:c | c = (aString at: n)]
	 ] whileTrue: [
		((aString at: n) = $$) 
			ifTrue: [n := n+1]
			ifFalse: [n := self endOfBlockOrArray: aString startingAt: n]].
	^ n