initialize-release
fetchInstanceMethods
	
	^ instanceMethods := (self 
		collect: SLMethodTestObject 
		from: self testObject methodDict values)
		reject: [:method | self rejectMethod: method]
