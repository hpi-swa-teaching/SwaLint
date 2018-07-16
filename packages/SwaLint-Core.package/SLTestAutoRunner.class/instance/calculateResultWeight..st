private
calculateResultWeight: anObject
	
	anObject isInteger ifTrue: [^anObject].
	anObject isLiteral ifTrue: [anObject ifTrue: [^1]].
	anObject isFraction ifTrue: [^anObject < 1 ifTrue:[^1] ifFalse: [^0]].
	
	^ 0
	