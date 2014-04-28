accessing
asStringOf: anObject
	"Obtain a string representation of the argument 
	using my asStringSelector symbol"
	
	^ (anObject perform: self asStringSelector) asString