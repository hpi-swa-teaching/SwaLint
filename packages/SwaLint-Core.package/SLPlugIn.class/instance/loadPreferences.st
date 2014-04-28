initialize-release
loadPreferences
	"Copy all needed preference values, so the test will not 
	be affected when the preferences are changed during 
	execution"
	
	self loadPreferences: self class usedPreferences.