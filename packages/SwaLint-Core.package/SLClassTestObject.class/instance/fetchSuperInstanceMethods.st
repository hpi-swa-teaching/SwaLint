initialize-release
fetchSuperInstanceMethods
	
	^ superInstanceMethods := (self 
		collect: SLMethodTestObject 
		from: self testObject superclass methodDict values)
		reject: [:method | self rejectMethod: method]