accessing
superInstanceMethods

	^ superInstanceMethods ifNil: [self fetchSuperInstanceMethods]