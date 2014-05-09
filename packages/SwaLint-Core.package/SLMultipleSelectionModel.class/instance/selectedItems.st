selections
selectedItems
	
	^ list 
		ifNil: [#()]
		ifNotNil: [
			| listSelection |
			listSelection := OrderedCollection new.
			list withIndexDo: [ :each :index |
				(self listSelectionAt: index)	 
					ifTrue: [listSelection add: each]].
			listSelection]