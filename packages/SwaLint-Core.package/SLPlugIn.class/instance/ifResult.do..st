test running
ifResult: anObject do: aBlock

	anObject isSLResult ifTrue: [
		aBlock value: anObject].