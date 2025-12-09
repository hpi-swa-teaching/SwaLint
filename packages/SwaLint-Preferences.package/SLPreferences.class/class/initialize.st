class initialization
initialize
	"SLPreferences initialize"
	Parameters ifNil: [self initializeParameters].
	self registerForEvents.