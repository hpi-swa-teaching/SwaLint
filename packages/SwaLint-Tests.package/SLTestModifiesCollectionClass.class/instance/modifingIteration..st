as yet unclassified
modifingIteration: aCollection
	aCollection do: [:each |
		each isPositive ifTrue: [aCollection remove: each]].