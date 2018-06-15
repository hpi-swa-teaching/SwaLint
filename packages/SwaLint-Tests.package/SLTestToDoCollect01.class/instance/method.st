as yet unclassified
method

	| collection |
	collection := Array new: 10.
	1 to: collection size do: [ :idx |
		| temp |
		collection at: idx put: idx]