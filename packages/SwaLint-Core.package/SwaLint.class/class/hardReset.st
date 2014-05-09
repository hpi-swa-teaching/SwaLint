debugging
hardReset
	"In some cases mysterious errors occure when initializing or resetting SwaLint -- try a hard reset"

	SLPreferences initialize.
	SLTestData initialize.
	SwaLint reset.
	