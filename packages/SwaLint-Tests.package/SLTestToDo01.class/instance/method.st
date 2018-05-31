as yet unclassified
method

	| col |
	col := (1 to: 10) asBag.
	
	1 to: col size do: [:each || temp |
		temp := each * 2  ]