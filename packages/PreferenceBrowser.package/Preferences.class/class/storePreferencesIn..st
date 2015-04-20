personalization
storePreferencesIn: aFileName 
	| stream prefsSnapshot |
	#(#Prevailing #PersonalPreferences )  do:[:ea | Parameters  removeKey:ea  ifAbsent:[]].
	stream := ReferenceStream fileNamed: aFileName.
	stream  nextPut:Parameters.
	prefsSnapshot := self dictionaryOfPreferences copy.
	prefsSnapshot keysAndValuesDo: [:key :pref | prefsSnapshot at: key put: pref asPreference].
	stream  nextPut: prefsSnapshot.
	Smalltalk isMorphic 
		 ifTrue:[stream nextPut:World fillStyle]
		 ifFalse:[stream nextPut:DesktopColor].
	stream close