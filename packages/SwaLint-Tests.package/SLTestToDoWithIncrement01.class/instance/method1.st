as yet unclassified
method1

	| count |
	count := 0.

	1 to: 10 do: [:each |
		self doNothing.
		count := count + 1.
		self doNothing.]