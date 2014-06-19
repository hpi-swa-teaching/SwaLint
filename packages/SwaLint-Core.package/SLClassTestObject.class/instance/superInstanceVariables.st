accessing
superInstanceVariables

	^ superInstanceVariables ifNil: [self fetchSuperInstanceVariables]