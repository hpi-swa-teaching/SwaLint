comparing
= aValue
	"To objects are equal if their stored objects are equal"

	^ (aValue isKindOf: self class)
		ifTrue: [self = aValue content]
		ifFalse: [self content = aValue]