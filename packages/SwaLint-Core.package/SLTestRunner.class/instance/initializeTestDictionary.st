initialize-release
initializeTestDictionary
	"Copy all test data objects for thread-safety"
	
	| dictionary |
	dictionary := Dictionary new.
	environment testDict do: [ :test | 
		dictionary 
			at: test symbol 
			put: (test copy testRunner: self)].
	self testDictionary: dictionary.
	^ dictionary