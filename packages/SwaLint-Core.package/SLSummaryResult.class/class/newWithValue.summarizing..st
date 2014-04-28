instance creation
newWithValue: aNumber summarizing: aTest
	"The result is summarizing another (boolean) test"

	^ self
		newWithValue: aNumber 
		summarizing: aTest condition: nil