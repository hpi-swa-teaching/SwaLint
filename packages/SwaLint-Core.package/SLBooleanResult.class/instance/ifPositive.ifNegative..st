controlling
ifPositive: posBlock ifNegative: negBlock

	^ self isPositive ifTrue: posBlock ifFalse: negBlock