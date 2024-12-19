private
name: aName helpString: aString categoryList: aList type: aType
	"Do not make aName an interned symbol."

	name := aName.
	value := defaultValue := nil.
	
	helpString := aString.
	localToProject := false.
	type := aType.
	categoryList := aList
						ifNil: [OrderedCollection with: #unclassified]
						ifNotNil: [aList collect: [:elem | elem asSymbol]].

	changeInformee := nil.
	changeSelector  := nil.