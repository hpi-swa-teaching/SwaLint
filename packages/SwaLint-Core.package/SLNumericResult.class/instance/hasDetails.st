accessing
hasDetails
	"If I belong to a class, all it's methods will be
	shown for details"

	^ (self testObject isClass) or: (self testObject isMethod)