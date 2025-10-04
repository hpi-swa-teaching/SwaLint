preferences
rejectMethodByAuthor: aSLMethod  
	| splitString authorString negated |
	(SLPreferences valueOfPreference: #AuthorFilter) ifEmpty: [^ false].
	aSLMethod testObject timeStamp ifEmpty: [^ false].
	splitString := SLPreferences AuthorFilter splitBy: ', '.
	(negated := splitString first beginsWith: '~= ')
		ifTrue: [splitString at: 1 put: (splitString first copyReplaceAll: '~= ' with: '')].
	authorString := ((aSLMethod testObject timeStamp splitBy: ' ') allButLast allButLast
						inject: '' into: [:str :next | str, ' ', next]) withBlanksTrimmed.
	^ negated
		ifTrue: [splitString includes: authorString]
		ifFalse: [(splitString includes: authorString) not]
