accessing
printOn: aStream

	| title |
	title := self class name.
	aStream
		nextPutAll: (title first isVowel ifTrue: ['an '] ifFalse: ['a ']);
		nextPutAll: title;
		nextPutAll: ' (';
		nextPutAll: self results asString;
		nextPutAll: ')'