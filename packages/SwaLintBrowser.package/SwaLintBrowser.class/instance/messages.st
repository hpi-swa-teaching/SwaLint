accessing - toolbuilder
messages
	<uses: #(results selectedClass)>

	^ (self resultsForTestAndClassSelection
		collect: [:result | result message] as: Set)
			sorted