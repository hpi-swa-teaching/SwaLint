initialization - save/load
storePreferencesIn: aFileName 
	| stream prefsSnapshot |
	#(Prevailing PersonalPreferences) do:
		[:ea |
		 Parameters removeKey: ea ifAbsent: []].
	stream := ReferenceStream fileNamed: aFileName.
	stream nextPut: Parameters.
	prefsSnapshot := preferencesDictionary copy.
	prefsSnapshot keysAndValuesDo: [:key :pref |
		[prefsSnapshot at: key put: pref asPreference]
			on: Deprecation do: [ : err | "Ignore preferences which may not be supported anymore."]].
	stream nextPut: prefsSnapshot.
	stream nextPut: (Smalltalk isMorphic 
						 ifTrue:[Project current world fillStyle]
						 ifFalse:[self desktopColor]).
	stream close