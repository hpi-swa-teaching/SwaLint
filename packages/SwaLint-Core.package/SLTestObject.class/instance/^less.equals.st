comparing
<= anObject
	"Implemented in order to arrange SLTestObjects in a
	sorted collection"
	
	^ (anObject isKindOf: SLTestObject) 
		ifFalse: [true]
		ifTrue: [self name <= anObject name]