as yet unclassified
method3

	| count |
	count := 0.

	1 to: 10 do: [:each || temp |
		temp := 1.
		self doNothing.
		count := count - 1.
		self doNothing.]