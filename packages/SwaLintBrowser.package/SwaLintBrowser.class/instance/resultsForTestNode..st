accessing
resultsForTestNode: node

	^ self results select:
		(node isCategory
			ifFalse: [[:result | result test == node]]
			ifTrue: [[:result | result test categories anySatisfy: [:category | category includesCategory: node]]])