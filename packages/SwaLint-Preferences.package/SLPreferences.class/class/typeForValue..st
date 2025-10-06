support
typeForValue: anObject
	"Returns the preference type for the given value to be distinguished in tools."

	{
		AbstractFont -> #Font.
		Boolean -> #Boolean.
		Color -> #Color.
		String -> #String.
		Number -> #Number
	} do: [:spec | (anObject isKindOf: spec key) ifTrue: [^ spec value]].

	^ #Object
	


