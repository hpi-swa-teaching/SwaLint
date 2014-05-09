accessing
trueIndexes
	| indexList |
	indexList := Set new.
	selection keysAndValuesDo:[:eachKey :eachValue | eachValue ifTrue: [indexList add: eachKey]].
	^indexList