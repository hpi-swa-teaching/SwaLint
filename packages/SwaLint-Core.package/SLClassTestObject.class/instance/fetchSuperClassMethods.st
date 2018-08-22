initialize-release
fetchSuperClassMethods

	superClassMethods := (self 
		collect: SLMethodTestObject 
		from: self testObject superclass class methodDict values)
		reject: [:method | self rejectMethod: method].
	superClassMethods do: [:each | each classSide: true].
	^ superClassMethods