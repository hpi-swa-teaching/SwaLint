pragma-preferences
initializePragmaPreferences 

	| classes aPrefSymbol aPreference |
	
	classes := (PackageOrganizer default 
		packageNamed: #'SwaLint-PlugIns' ifAbsent: nil) classes.
	classes do: [ :aClass | 
		aClass class methodsDo: [ :aMethod | 
			aMethod pragmas do: [ : aPragma | 
				aPreference := 
					self convertPragmaToPreference: aPragma of: aMethod in: aClass.
				aPrefSymbol := aMethod selector asSymbol.			
				self dictionaryOfPreferences at: aPrefSymbol put: aPreference. ]]].