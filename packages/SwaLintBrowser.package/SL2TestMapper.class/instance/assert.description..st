error handling
assert: aBlock description: aStringOrBlock

	SwaLint debug ifFalse: [^ self].
	^ super assert: aBlock description: aStringOrBlock