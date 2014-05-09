scrollbar parameters
fontFactor
	"answer the convertion factor for resizing element based on font  
	size"
	| factor |
	factor := TextStyle defaultFont height / 12.0.
	^ factor > 1.0
		ifTrue: [1 + (factor - 1.0 * 0.5)]
		ifFalse: [factor]