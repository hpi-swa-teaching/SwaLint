get/set
doesNotUnderstand: aMessage
	"Look up the message selector as a flag."
	aMessage arguments size > 0 ifTrue: [^ super doesNotUnderstand: aMessage].
	^ self valueOfFlag: aMessage selector
