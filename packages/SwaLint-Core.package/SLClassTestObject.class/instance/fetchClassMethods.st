initialize-release
fetchClassMethods
	
	classMethods := (self 
		collect: SLMethodTestObject 
		from: self testObject class methodDict values)
		reject: [:method | self rejectMethod: method].
	classMethods do: [:each | each classSide: true].
	^ classMethods