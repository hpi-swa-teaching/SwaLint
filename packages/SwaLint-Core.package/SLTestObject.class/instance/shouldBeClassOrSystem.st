errors
shouldBeClassOrSystem

	(#(Class System) anySatisfy: [:k | k = self kind]) ifTrue: [^ self].
	^ SLWrongTypeError signal: self name, ' should be Class or System'