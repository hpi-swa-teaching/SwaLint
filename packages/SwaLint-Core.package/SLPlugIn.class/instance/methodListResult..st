results
methodListResult: aMethodCollection

	^ ((self collectionResult: aMethodCollection) 
		showRule: [:items | items isEmpty not]) formatAsMethodList