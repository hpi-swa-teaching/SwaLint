initialize-release
install
	"If you want to do something during installation, overwrite #onInstall"
	
	installed := true.
	[self initializePreferences;
		onInstall.
	SwaLint installPlugIn: self] ifError: [ :err |
		self unload]