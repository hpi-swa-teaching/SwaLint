accessing
instanceVariables

	^ instanceVariables ifNil: [self fetchInstanceVariables]