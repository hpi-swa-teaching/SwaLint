menus
addInspectErrorMenuPointTo: aMenu

	(self selectedItem isNil or: [self selectedItem isError not]) 
		ifTrue: [^ self].
	
	aMenu 
		add: 'trace error' 
		target: self 
		selector: #inspectErrorResult:
		argument: self selectedItem.