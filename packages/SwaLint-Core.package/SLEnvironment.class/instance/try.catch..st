SwaLint
try: aBlock catch: aExceptBlock
	"If the SwaLint debug mode is disabled, catch all errors."

	^ SwaLint debug
		ifTrue: aBlock
		ifFalse: [aBlock on: Error do: aExceptBlock]