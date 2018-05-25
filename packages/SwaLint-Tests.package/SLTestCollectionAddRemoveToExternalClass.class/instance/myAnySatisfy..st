as yet unclassified
myAnySatisfy: aCollection
	|invalid|
	invalid := nil.
	^(aCollection detect: [:each | each isPositive] ifNone: [invalid]) ~= invalid