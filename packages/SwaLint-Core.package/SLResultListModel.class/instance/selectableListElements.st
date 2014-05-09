selections
selectableListElements

	model ifNil: [^ #()].
	getList ifNil: [^ list].
	
	^ self listElementsOrdered: (model perform: getList)