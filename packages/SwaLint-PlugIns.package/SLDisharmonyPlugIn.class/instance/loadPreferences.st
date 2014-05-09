initialize-release
loadPreferences

	self loadPreferences: #(ClassLOCAVRG ClassLOCSTDEV).
	self preferenceDict
		at: #LargeMethodLOC
		put: ((self preference: #ClassLOCAVRG) + (self preference: #ClassLOCSTDEV)) / 3.