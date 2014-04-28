initialize-release
install
	"If you want to do something during installation, overwrite #onInstall"
	
	self hasUnsolvedDependencies ifTrue: [^ self showUnsolvedDependenciesInfo].
	
	installed := true.
	[self initializePreferences;
		onInstall.
	SwaLint installPlugIn: self] ifError: [ :err |
		self unload]