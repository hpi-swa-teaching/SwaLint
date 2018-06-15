accessing
orderButtonString

	^ self isOrderedByTests 
		ifTrue: ['Order by classes']
		ifFalse: ['Order by tests']