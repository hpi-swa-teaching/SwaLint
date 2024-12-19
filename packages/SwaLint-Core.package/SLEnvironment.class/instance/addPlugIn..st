SwaLint
addPlugIn: aSLPlugInClass
	"Register all tests offered by the plug-in class."

	self basicAddPlugIn: aSLPlugInClass.
	self changed: #plugIns.