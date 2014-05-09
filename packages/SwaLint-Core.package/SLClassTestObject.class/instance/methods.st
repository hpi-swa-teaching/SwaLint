accessing
methods

	^ methods ifNil: [self fetchMethods]