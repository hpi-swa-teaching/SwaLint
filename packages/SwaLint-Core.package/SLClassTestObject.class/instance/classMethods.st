accessing
classMethods

	^ classMethods ifNil: [self fetchClassMethods]