as yet unclassified
allIfs
	"Includes all major if-statements."
	| a b |
	(var2 > 10) ifTrue: [a := 5].
	(var2 > 8) ifFalse: [a := 3].
	(var1 < var2) ifTrue: [a := 1] ifFalse: [a := 2.	].
	(var2 > a) ifFalse: [a := var1] ifTrue: [a := a + 1].
	"(1 < 2) ifTrue: [Transcript show: 'Comments don't count!']."
	a ifNil: [a := 7].
	a ifNotNil: [a := 5].
	a ifNil: [a := 0] ifNotNil: [a := 1].
	a ifNotNil: [b := 'aja'] ifNil: [b := 'aso'].
	b ifEmpty: [b := 'a-ha'].
	b ifNotEmpty: [b := 'b-ha'].
	b ifEmpty: [b := 'a'] ifNotEmpty: [b := 'b'].
	b ifNotEmpty: [b := 'hrm'] ifEmpty: [b := 'ende'].
	^ a