comparing
<= anObject
	"Implemented in order to arrange SLTestObjects in a
	sorted collection"
	
	^ (anObject isKindOf: (self class)) 
		ifFalse: [true]
		ifTrue: [self name <= anObject name]