private
endOfCommand: aString startingAt: anInteger

	| n c |
	n := anInteger.
	[n := aString indexOfAnyOf: '[]{}$.''' asCharacterSet startingAt: n+1.
	 (n = 0) ifTrue: [^ aString size].
	 c := aString at: n.
	 ((c = $[) or: [c = ${]) ifTrue: [n := self endOfBlockOrArray: aString startingAt: n].
	 (c = $$) ifTrue: [n := n+1].
	 (c = $') ifTrue: [n := aString indexOf: $' startingAt: n+1 ifAbsent: [aString size]].
	 (((c = $.) and: [self noNumber: aString at: n]) or: ['}]' includes: c]) ifTrue: [^ n].
	 true] whileTrue