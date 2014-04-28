debugging
printOn: aStream
	"Print a string decribing the receiver to the given stream"

	super printOn: aStream.
	aStream nextPutAll: name storeString, ' ', value storeString