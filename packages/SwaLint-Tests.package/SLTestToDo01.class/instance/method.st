as yet unclassified
method

	| col sum|
	col := (1 to: 10) asBag.
	sum := 0.
	1 to: col size do: [:each |
		sum := sum + col at: each ]