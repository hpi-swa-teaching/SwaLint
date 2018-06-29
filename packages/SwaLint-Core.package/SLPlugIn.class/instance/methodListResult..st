results
methodListResult: aMethodCollection

	^ ((self collectionResult: aMethodCollection) 
		showRule: [:items | items size isEmpty not]) formatAsMethodList