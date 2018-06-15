accessing-results
resultAt: anIndex

	^ resultsSelected includes: (self results at: anIndex ifAbsent: [ ^ false ])