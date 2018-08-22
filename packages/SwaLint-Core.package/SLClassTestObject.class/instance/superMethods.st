accessing
superMethods

	^ superMethods ifNil: [self fetchSuperMethods]