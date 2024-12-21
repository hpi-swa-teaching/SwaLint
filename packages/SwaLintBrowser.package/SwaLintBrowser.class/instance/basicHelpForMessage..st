accessing - toolbuilder
basicHelpForMessage: message

	| selector iconHelp method |
	Preferences balloonHelpInMessageLists ifFalse: [^ nil].
	
	selector := (Symbol lookup: message) ifNil: [^ nil].
	method := self selectedClassOrMetaClass compiledMethodAt: selector ifAbsent: [^ nil].
	iconHelp := (self messageIconHelpFor: method selector) ifNotEmpty: [:t | 
		t , Character cr, Character cr].
	
	^ iconHelp asText
		append: (self messageHelpForMethod: method);
		yourself