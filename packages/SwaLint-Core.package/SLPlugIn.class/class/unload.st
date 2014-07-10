initialize-release
unload
	"Clean this up. If you want to do something in your plug-in, overwrite onUnload"
	
	installed := false.
	[SwaLint removePlugIn: self.
	self onUnload] ifError: [:err | ].