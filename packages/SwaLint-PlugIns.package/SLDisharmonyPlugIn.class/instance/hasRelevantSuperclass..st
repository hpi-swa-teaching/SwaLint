private
hasRelevantSuperclass: aSLClassTestObject

	^ (self class basicClasses includes: aSLClassTestObject testObject superclass) not