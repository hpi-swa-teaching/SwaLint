updating
refreshList
	
	self refreshListUpdateTo: 
		((model isNil or: [getList isNil]) ifTrue: [^ list] ifFalse: [
			model perform: getList]).