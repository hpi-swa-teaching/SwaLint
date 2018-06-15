as yet unclassified
method2

	| count i j k |
	count := 0.
	
	i := 1.
	j := 10.
	k := 2.

	i to: j by: k do: [:each || temp |
		temp := 1.
		self doNothing.
		count := count + k.
		self doNothing.]