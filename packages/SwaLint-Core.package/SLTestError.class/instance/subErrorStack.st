accessing
subErrorStack

	^ (error isKindOf: self class) 
		ifFalse: [OrderedCollection new]
		ifTrue: [error errorStack]