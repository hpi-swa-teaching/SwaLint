initialize-release
loadPreferences

	self loadPreferences: #(AverageLOCperMethodAVRG
					ClassLOCAVRG ClassLOCSTDEV WMCAVRG WMCSTDEV).
	self loadPreferenceCategory: #Disharmony.
	
	self preferenceDict
		at: #LargeMethodLOC
		put: ((self preference: #ClassLOCAVRG) + (self preference: #ClassLOCSTDEV)) / 3;
		at: #LargeClassLOC
		put: ((self preference: #ClassLOCAVRG) + (self preference: #ClassLOCSTDEV)) * 3;
		at: #LargeWeightedMethodCount
		put: ((self preference: #WMCAVRG) + (self preference: #WMCSTDEV)) * 3.