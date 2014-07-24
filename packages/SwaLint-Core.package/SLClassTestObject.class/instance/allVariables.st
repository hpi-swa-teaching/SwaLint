accessing
allVariables

	^ allVariables ifNil: [ self fetchAllVariables ]