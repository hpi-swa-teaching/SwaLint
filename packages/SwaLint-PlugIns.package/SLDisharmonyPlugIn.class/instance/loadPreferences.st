initialize-release
loadPreferences

	self loadPreferences: #(ClassLOCAVRG ClassLOCSTDEV WMCAVRG WMCSTDEV).
	self preferenceDict
		at: #LargeMethodLOC
		put: ((self preference: #ClassLOCAVRG) + (self preference: #ClassLOCSTDEV)) / 3;
		at: #LargeClassLOC
		put: ((self preference: #ClassLOCAVRG) + (self preference: #ClassLOCSTDEV)) * 3;
		at: #LargeWeightedMethodCount
		put: ((self preference: #WMCAVRG) + (self preference: #WMCSTDEV)) * 3;
		at: #ShortMemoryCap
		put: 00000000000000000000000000000000000000000000000000000030.