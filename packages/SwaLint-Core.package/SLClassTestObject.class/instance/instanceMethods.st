accessing
instanceMethods

	^ instanceMethods ifNil: [self fetchInstanceMethods]