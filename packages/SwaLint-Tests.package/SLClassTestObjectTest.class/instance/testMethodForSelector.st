tests
testMethodForSelector
	
	| class |
	class := (SLMethodSelectorTestClass as: SLTestObject).
	
	self 
		assert: [(class methodForSelector: #someMethod) notNil];
		assert: [(class classMethodForSelector: #someMethod) isNil];
		assert: [(class instanceMethodForSelector: #someMethod:) notNil];
		assert: [(class classMethodForSelector: #createInstance) notNil].
		