results
methodListResult: aMethodCollection

	^((self collectionResult: aMethodCollection) 
		showRule: [:items | items size > 0]) formatAsMethodList