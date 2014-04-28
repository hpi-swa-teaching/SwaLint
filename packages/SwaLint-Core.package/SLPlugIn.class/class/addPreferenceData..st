preferences
addPreferenceData: pref

	self 
		addPreference: (pref at: 2)  
		categories: (pref at: 3)
		default:  (pref at: 4) 
		balloonHelp: (pref at: 5 ifAbsent: [nil]) 
		projectLocal: (pref at: 6 ifAbsent: [nil])  
		changeInformee: (pref at: 7 ifAbsent: [nil]) 
		changeSelector: (pref at: 8 ifAbsent: [nil]) 
		type: pref first.