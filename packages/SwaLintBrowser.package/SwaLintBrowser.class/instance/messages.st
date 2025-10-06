accessing - toolbuilder
messages
	<uses: #(displayedResults selectedClass)>

	^ (self resultsForTestAndClassSelection
		collect: [:result | result message] as: Set)
			sorted