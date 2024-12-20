printing
printOn: aStream

	super printOn: aStream.
	
	aStream nextPut: $<.
	self path printElementsOn: aStream.
	aStream nextPut: $>.