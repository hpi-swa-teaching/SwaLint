instance creation
newFrom: anObject

	anObject ifNil: [^ nil].
	anObject isSymbol ifTrue: [^ (SwaLint testDataFor: anObject) copy].
	(self isTestDataObject: anObject) ifTrue: [^ anObject copy].
	anObject isArray ifTrue: [^ self newFromArray: anObject].
	^ self error: 'Can not create SLTestData from ', anObject asString