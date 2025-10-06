accessing-results
resultAt: anIndex

	^ self resultsSelected includes: (self results at: anIndex ifAbsent: [ ^ false ])