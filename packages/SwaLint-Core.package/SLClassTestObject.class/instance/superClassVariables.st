accessing
superClassVariables

	^ superClassVariables ifNil: [self fetchSuperClassVariables]