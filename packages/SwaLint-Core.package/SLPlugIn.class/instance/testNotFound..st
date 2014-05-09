errors
testNotFound: aSLTestData
	"The requested test was not found. This can have several reasons.
	1. Check if you have typing errors in your offeredTestsData or 
		in the name of your test method. If you changed the name 
		of a test recently run 'YourPlugInClass reset'.
	2. Make sure your test really returns a SLResult object."

	^ self error: 'Test was not found: ', aSLTestData symbol