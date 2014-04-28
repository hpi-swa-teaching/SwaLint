updating
refreshListUpdateTo: aNewList
	
	| oldSelection newSelection |
	newSelection := Dictionary new.
	oldSelection := (self selectedItems) as: OrderedCollection.
	
	aNewList withIndexDo: [ :each :index | 
		(oldSelection anySatisfy: [ :any | any == each]) 
			ifTrue: [newSelection at: index put: true ]].
	
	list := aNewList.
	selection := newSelection.
	
	self 
		changed: #list;
		selectionsChanged. 