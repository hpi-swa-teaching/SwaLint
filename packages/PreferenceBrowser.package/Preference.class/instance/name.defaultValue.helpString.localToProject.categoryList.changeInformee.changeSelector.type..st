initialization
name: aName defaultValue: aValue helpString: aString localToProject: projectBoolean categoryList: aList changeInformee: informee changeSelector:  aChangeSelector type: aType
	"Initialize the preference from the given values.  There is an extra tolerence here for the symbols #true, #false, and #nil, which are interpreted, when appropriate, as meaning true, false, and nil"

	name := aName asSymbol.
	defaultValue := aValue.
	aValue = #true ifTrue: [defaultValue := true].
	aValue = #false ifTrue: [defaultValue := false].
	value := defaultValue.
	helpString := aString.
	localToProject := projectBoolean == true or: [projectBoolean = #true].
	type := aType.
	categoryList := (aList ifNil: [OrderedCollection with: #unclassified]) collect:
		[:elem | elem asSymbol].

	changeInformee := (informee == nil or: [informee == #nil])
						ifTrue: [nil]
						ifFalse:	[(informee isKindOf: Symbol)
							ifTrue:
								[Smalltalk at: informee]
							ifFalse:
								[informee]].
	changeSelector  := aChangeSelector