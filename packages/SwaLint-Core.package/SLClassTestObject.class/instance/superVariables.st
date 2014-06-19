accessing
superVariables

	^ superVariables ifNil: [self fetchSuperVariables]