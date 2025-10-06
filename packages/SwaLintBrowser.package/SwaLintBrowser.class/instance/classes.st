accessing
classes
	<uses: #(displayedResults selectedTestNode)>

	^ (self resultsForTestSelection
		collect: [:result | result classObject] as: Set)
			sorted: #name ascending