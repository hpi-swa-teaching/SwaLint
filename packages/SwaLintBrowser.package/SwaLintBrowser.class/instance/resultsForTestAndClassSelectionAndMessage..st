accessing - toolbuilder
resultsForTestAndClassSelectionAndMessage: message

	^ self resultsForTestAndClassSelection
		select: [:result | result message = message]