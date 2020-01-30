menu
readableName
	"Split camel-case preferences into a readable string with spaces."
	
	| result |
	result := (self name includes: Character space)
		ifTrue: [self name asString copy]
		ifFalse: [self name findFeatures joinSeparatedBy: ' '].
	
	"Ensure first letter is uppercase"
	result at: 1 put: (result at: 1) asUppercase.
	
	^ result