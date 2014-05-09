I contain all important data about a test.
	- unique symbol, to identify the test
	- test category (default: #none)
	- test name (default: unique symbol)
	- test description (default: 'no description')
	- plugin class, where the test is implemented 
	- method (optional)
	
method specifies the name of a method of the plug-in to be called with the testobject as argument. Default value is "symbol:" (i.e. for symbol=#classLOC it will be #classLOC:). If the method doesn't exist no error occures, but the test has to be handled in the #test:with: method of the plug-in then.