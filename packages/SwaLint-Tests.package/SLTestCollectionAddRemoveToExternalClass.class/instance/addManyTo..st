as yet unclassified
addManyTo: anObject
	(true | anObject bar = anObject foobar) ifTrue: [
		anObject foo addAll: {3. 1. 4. 1. 5}].
	