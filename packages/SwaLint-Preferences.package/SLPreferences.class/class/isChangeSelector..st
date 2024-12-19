reacting to change
isChangeSelector: aLiteral
	^preferencesDictionary anySatisfy: [:pref |
		aLiteral = pref changeSelector]