plugins
addPlugIn: aPlugInClass
	"Register all tests offered by the plug-in class."

	aPlugInClass isInstalled ifFalse: [^ self].
	aPlugInClass offeredTests do: [ :test |
		self addTest: test].
