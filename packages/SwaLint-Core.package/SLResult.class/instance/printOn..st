displaying
printOn: aStream

	| title |
	
	super printOn: aStream.

	title := self class name.
	aStream
		nextPutAll: ' (';
		nextPutAll: self valueAsString;
		nextPutAll: ')'