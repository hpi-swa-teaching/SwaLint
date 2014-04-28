updating
refreshList
	| newList oldSelection newSelection index |
	newSelection := Dictionary new.
	(model notNil and: [getList notNil]) 
		ifTrue: 
			[newList := model perform: getList.
			oldSelection := self selectedItems collect: [:each | each asString].
			index := 0.
			(newList collect: [:each | each asString]) do: 
					[:each | 
					index := index + 1.
					(oldSelection includes: each) ifTrue: [newSelection at: index put: true]].
			list := newList.
			self changed: #list].
	selection := newSelection.
	self selectionsChanged