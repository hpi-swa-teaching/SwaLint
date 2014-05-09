accessing
classVariables

	^ classVariables ifNil: [self  fetchClassVariables]