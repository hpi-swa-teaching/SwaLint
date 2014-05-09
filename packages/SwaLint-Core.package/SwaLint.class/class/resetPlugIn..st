initialize-release
resetPlugIn: aPlugInClass
	"Refresh a Plugin-Class and all subclasses"

	aPlugInClass
		reset;
		subclassesDo: [ :subclass |
			self resetPlugIn: subclass].