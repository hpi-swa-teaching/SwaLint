initialize-release
loadPreferences

	self loadPreferences: #(AverageLOCperMethodAVRG
					ClassLOCAVRG ClassLOCSTDEV WMCAVRG WMCSTDEV).
	self loadPreferenceCategory: #Disharmony.