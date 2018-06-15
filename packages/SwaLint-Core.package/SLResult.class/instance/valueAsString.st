displaying
valueAsString
	"Answer the value converted to string."
	^ valueAsString ifNil: [
		self cacheValueAsString]