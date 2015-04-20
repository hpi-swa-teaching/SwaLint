class initialization
unload
	"Unload order is not guaranteed so guard against failure"
	[self viewRegistry unregister: self] on: Error do:[]