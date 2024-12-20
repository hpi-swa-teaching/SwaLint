*SwaLintBrowser-UI-evaluating-pseudo-override
cull: firstArg cull: secondArg

	self numArgs >= 1 ifTrue: [^ self value: firstArg value: secondArg].
	^ self value: firstArg