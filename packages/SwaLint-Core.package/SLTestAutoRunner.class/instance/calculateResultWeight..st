as yet unclassified
calculateResultWeight: anObject

	anObject isInteger ifTrue: [^anObject].
	anObject isLiteral ifTrue: [anObject ifTrue: [^1]].

	^ 0
	