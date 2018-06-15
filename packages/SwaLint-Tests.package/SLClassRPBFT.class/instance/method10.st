as yet unclassified
method10
	"Nested if-statements."
	| a var1 var2 |
	a := 5.
	(var2 > 10) ifTrue: [(var1 > var2) ifTrue: [a := var1] ifFalse: [a := var2]].
	(a = 8) ifFalse: [(a < 8) ifTrue: [a := 8]].
	^ a