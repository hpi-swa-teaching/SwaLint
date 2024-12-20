accessing
classes
	<uses: #(results selectedTestNode)>

	^ (self resultsForTestSelection
		collect: [:result | result classObject] as: Set)
			sorted: #name ascending