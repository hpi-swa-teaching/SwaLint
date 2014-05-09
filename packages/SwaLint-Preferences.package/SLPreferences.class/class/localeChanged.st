initialization
localeChanged
	LocaleID current isoLanguage = 'ja'
		ifTrue: [Preferences enable: #useFormsInPaintBox]
		ifFalse: [Preferences disable: #useFormsInPaintBox]