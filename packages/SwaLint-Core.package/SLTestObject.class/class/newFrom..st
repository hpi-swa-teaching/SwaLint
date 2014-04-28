instance creation
newFrom: anObject

	anObject isSymbol
		ifTrue: [^ self newFrom: (Smalltalk at: anObject)].
	anObject isBehavior
		ifTrue: [^ SLClassTestObject newFrom: anObject].
	anObject isCompiledMethod 
		ifTrue: [^ SLMethodTestObject newFrom: anObject].
	self error: 'Can not create an SLTestObject from ', anObject asString.