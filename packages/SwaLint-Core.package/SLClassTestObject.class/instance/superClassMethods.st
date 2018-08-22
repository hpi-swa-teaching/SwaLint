accessing
superClassMethods

	^ superClassMethods ifNil: [self fetchSuperClassMethods]