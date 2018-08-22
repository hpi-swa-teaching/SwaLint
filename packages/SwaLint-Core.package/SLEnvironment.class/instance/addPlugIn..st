SwaLint
addPlugIn: aSLPlugInClass
	"Register all tests offered by the plug-in class."

	aSLPlugInClass subclasses
		do: [ :subclass | self addPlugIn: subclass]
		displayingProgress: ('Loading ', aSLPlugInClass).
	aSLPlugInClass offeredTests
		do: [ :test | self addTest: test]
		displayingProgress: [ :test | 'Loading Test:',test name].

	SwaLint refreshAllDialogs.