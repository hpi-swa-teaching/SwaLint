updating
updateResults

	results := self findResults.
	self resultsSelected: (self resultsSelected select: [ :each | self results includes: each ]).
	self resultSelected: 0.
	self changed: #resultList; changed: #results; changed: #resultSelected.
