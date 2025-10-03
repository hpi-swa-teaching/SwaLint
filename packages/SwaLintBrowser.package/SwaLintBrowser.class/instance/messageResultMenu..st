menus
messageResultMenu: aMenu

	^ aMenu
		add: 'explore results' action: #exploreSelectedResults;
		add: 'delete from results (d)' action: #deleteSelectedResults;
		yourself