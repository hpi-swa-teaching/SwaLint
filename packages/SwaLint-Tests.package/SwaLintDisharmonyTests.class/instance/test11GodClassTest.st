testing
test11GodClassTest

	| godClass |
	
	self resetTestSystem.
	
	godClass := SLClassTestObject newFrom: SLDisharmonyPlugIn.
	"We basically had to create a complex brain class in the test classes here but due to the case that would take a lot of unreasonable work we will takt the SLDisharmonyPlugIn class (ourselves) which has to exist anyway."
	testSystem addClass: (SLClassTestObject newFrom: SLCodeCloneInformation).
	godClass parent: testSystem.
	
	self assert: ((godClass resultOf: #godClass) = true)