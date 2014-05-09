personalization
storePreferencesIn: aFileName 
	| stream |
	#(#Prevailing #PersonalPreferences )  do:[:ea | Parameters  removeKey:ea  ifAbsent:[]].
	stream := ReferenceStream  fileNamed:aFileName.
	stream  nextPut:Parameters.
	stream  nextPut:self dictionaryOfPreferences.
	Smalltalk isMorphic 
		 ifTrue:[stream  nextPut:World fillStyle]
		 ifFalse:[stream  nextPut:DesktopColor].
	stream close