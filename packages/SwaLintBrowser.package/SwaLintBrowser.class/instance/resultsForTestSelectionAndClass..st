accessing - toolbuilder
resultsForTestSelectionAndClass: aClass

	^ self resultsForTestSelection
		select: [:result | result classObject == aClass]