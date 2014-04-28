accessing
addMethod: aSLMethodTestObject
	"Manually add a method test object"

	self 
		replace: aSLMethodTestObject in: self instanceMethods;
		replace: aSLMethodTestObject in: self classMethods.
	^ aSLMethodTestObject parent: self
	