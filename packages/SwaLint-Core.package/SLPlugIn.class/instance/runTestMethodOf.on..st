test running
runTestMethodOf: aTest on: aSLTestObject
	"Get the method selector of the test and call the method if possible."

	self class methodDict at: aTest method ifPresent: [ :method |	
		^ self withArgs:
			((method numArgs = 1)
				ifTrue: [{aSLTestObject}]
				ifFalse: [{aSLTestObject. aTest}])
		executeMethod: method].