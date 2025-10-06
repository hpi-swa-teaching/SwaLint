accessing - toolbuilder
basicHelpForMessage: message

	| selector method |
	Preferences balloonHelpInMessageLists ifFalse: [^ nil].
	
	selector := (Symbol lookup: message) ifNil: [^ nil].
	method := self selectedClassOrMetaClass compiledMethodAt: selector ifAbsent: [^ nil].
	
	^ self messageHelpForMethod: method