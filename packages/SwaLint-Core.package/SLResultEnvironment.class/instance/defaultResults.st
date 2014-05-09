initialize-release
defaultResults
	
	results := (SLResultListModel 
		withModel: self withMessage: #selectableResults
		withAsStringSelector: #format:).
	
	tests addDependent: results.
	classes addDependent: results.
	results addDependent: self.  