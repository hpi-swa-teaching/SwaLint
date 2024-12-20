menus
classListMenu: aMenu 
	<classListMenuShifted: false>
	aMenu addList: #(
		-
		('browse full (b)'			browseMethodFull)
		('browse hierarchy (h)'		spawnHierarchy)
		('browse protocol (p)'		browseFullProtocol)
		('browse documentation'		browseAllCommentsForClass)
		-
		('printOut'					printOutClass)
		('fileOut'					fileOutClass)
		-
		('show hierarchy'			hierarchy)
		('show definition'			editClass)
		('show comment'			editComment)
		-
		('references... (r)'			browseVariableReferences)
		('assignments... (a)'			browseVariableAssignments)
		('class refs (N)'				browseClassRefs)
		-
		('rename class ...'			renameClass)
		('copy class'				copyClass)
		('remove class (x)'			removeClass)
		-
		('find method...'				findMethod)).
	^ aMenu