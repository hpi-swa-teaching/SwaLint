accessing
signal
	"My value shouldn't be accessed.
	Show me in the result list to point out the problem"

	self showAlways.
	self initError.
	^ super signal