menus
shiftedClassListMenuMore: aMenu
	<classListMenuShifted: true>
	<menuPriority: 1000>
	^ aMenu addList: #(-
			('more...' offerUnshiftedClassListMenu 'return to the standard class-list menu'));
		yourself