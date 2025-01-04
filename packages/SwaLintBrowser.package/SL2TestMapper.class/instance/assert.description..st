error handling
assert: aBlock description: aStringOrBlock

	SwaLint debugMode ifFalse: [^ self].
	^ super assert: aBlock description: aStringOrBlock