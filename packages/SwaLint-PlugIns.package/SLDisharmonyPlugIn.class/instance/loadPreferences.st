initialize-release
loadPreferences

	self loadPreferences: #(AverageLOCperMethodAVRG
					ClassLOCAVRG ClassLOCSTDEV WMCAVRG WMCSTDEV).
	self preferenceDict
		at: #LargeMethodLOC
		put: ((self preference: #ClassLOCAVRG) + (self preference: #ClassLOCSTDEV)) / 3;
		at: #LargeClassLOC
		put: ((self preference: #ClassLOCAVRG) + (self preference: #ClassLOCSTDEV)) * 3;
		at: #LargeWeightedMethodCount
		put: ((self preference: #WMCAVRG) + (self preference: #WMCSTDEV)) * 3;
		at: #ShortMemoryCap
		put: 30;
		at: #SmallLineBias
		put: 3;
		at: #MinimumExactCloneSize
		put: 3;
		at: #MinimumDuplicationChainLength
		put: (2 * ((self preference: #MinimumExactCloneSize) + 1)) + 1;
		at: #SignificantStandaloneExactCloneSize
		put: (self preference:#AverageLOCperMethodAVRG).