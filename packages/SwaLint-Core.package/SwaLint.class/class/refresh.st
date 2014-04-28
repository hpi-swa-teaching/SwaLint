initialize-release
refresh
	"Something about the tests changed. Reload all Plugins and refresh all open dialogs"

	self 
		initializeInstanceVariables;
		reloadPlugIns;
		refreshAllDialogs.