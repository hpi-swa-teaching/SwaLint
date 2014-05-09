accessing
allMethods

	^ allMethods ifNil: [self fetchAllMethods]