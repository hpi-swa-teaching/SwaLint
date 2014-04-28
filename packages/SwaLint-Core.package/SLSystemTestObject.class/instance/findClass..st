accessing
findClass: aClass

	^ allClasses 
		detect: [ :any | any testObject = aClass]
		ifNone: [self addClass: 
			(SLClassTestObject newFrom: aClass)]