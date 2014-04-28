results
noResult: aString
	"Create an result representing that the test was not applicable for some reason."

	^ self tryRunning: [
		self expected: aString]