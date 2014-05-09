personalization
compileHardCodedPref: prefName enable: aBoolean
	"Compile a method that returns a simple true or false (depending on the value of aBoolean) when Preferences is sent prefName as a message"

	self class compileSilently: (prefName asString, '
	"compiled programatically -- return hard-coded preference value"
	^ ', aBoolean storeString) classified: 'hard-coded prefs'.
	
"Preferences compileHardCodedPref: #testing enable: false"