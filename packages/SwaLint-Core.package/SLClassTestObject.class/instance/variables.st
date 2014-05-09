accessing
variables

	^ variables ifNil: [self fetchVariables]