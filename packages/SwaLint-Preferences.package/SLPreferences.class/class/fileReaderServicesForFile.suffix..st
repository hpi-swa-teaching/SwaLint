support - file list services
fileReaderServicesForFile: fullName suffix: suffix 
	^(suffix = 'prefs')  | (suffix = '*') 
		ifTrue: [ self services ]
		ifFalse: [ #() ]