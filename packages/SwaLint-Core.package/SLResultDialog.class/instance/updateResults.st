updating
updateResults

	results := self findResults.
	resultsSelected := resultsSelected select: [ :each | self results includes: each ].
	self changed: #resultList; changed: #results; changed: #resultSelected.
