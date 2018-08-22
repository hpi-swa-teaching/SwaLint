accessing
classIsRoot: aClass 

	(self classForTestClass: aClass superclass)
		ifNil: [^true] 
		ifNotNil: [^false]