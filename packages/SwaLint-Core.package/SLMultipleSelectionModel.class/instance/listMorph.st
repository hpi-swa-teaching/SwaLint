as yet unclassified
listMorph
	| m |
	m := SLPluggableListMorphOfMany
				on: self
				list: #list
				primarySelection: #primarySelection
				changePrimarySelection: #primarySelection:
				listSelection: #listSelectionAt:
				changeListSelection: #listSelectionAt:put:
				menu: #menu:.
	^ m