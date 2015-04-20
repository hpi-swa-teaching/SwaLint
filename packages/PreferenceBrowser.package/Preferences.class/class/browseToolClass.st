hard-coded prefs
browseToolClass
	"This method is used for returning the appropiate class for the #browserShowsPackagePane preference. Now that preference modifies the registry so here we query directly to the registry"
	^ SystemBrowser default.