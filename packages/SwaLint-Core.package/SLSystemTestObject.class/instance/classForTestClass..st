accessing
classForTestClass: aClass

	^ allClasses 
		detect: [ :any | any testObject = aClass ]
		ifNone: [ nil ]