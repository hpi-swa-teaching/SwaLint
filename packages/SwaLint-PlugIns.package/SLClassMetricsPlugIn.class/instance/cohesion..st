private
cohesion: methods

	| pairs total |
	(methods size <= 1) ifTrue: [^ 1].
	pairs := 0.
	total := 0.
	methods doWithIndex: [ :method1 :i1 |
		methods doWithIndex: [ :method2 :i2 |
			(i1 < i2) ifTrue: [
				(self similarInstVarsAreUsedBy: method1 and: method2) 
					ifTrue: [pairs := pairs +1].
				total := total + 1]]].
	^ pairs/total