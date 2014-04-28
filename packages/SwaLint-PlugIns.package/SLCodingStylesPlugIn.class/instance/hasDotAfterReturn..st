private
hasDotAfterReturn: aString

	| n  |
	n := (aString indexOf: $^)-1.
	(n < 0) ifTrue: [^ nil "Method has no return"].
	[n := aString indexOf: $^ startingAt: n.
	 n > 0] whileTrue: [
		n := self endOfCommand: aString startingAt: n.
		((aString at: n) = $.) ifTrue: [^ true]].
	^ false