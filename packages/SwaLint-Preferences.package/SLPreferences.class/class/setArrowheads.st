misc
setArrowheads
	"Let the user edit the size of arrowheads"

	| aParameter result  |
	aParameter := self parameterAt: #arrowSpec ifAbsent: [5 @ 4].
	result := Morph obtainArrowheadFor: 'Default size of arrowheads on pen trails ' translated defaultValue: aParameter asString.
	result ifNotNil:
			[self setParameter: #arrowSpec to: result]
		ifNil:
			[Beeper beep]