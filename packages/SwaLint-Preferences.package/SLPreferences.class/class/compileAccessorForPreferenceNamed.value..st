private
compileAccessorForPreferenceNamed: name value: value
	"Compile a method that returns a simple true or false (depending on the value of aBoolean) when Preferences is sent prefName as a message"

	self class 
		compileSilently: (
			'{1} ^{2}'
				format: {
					name asString.
					value storeString })
		classified: 'prefs - misc'.
	
"Preferences compileAccessorForPreferenceNamed: #testing value: false"