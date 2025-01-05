method tests
suspiciousAuthorInitials: aMethodTestObject
	<slTestName: 'Method has suspicious author initials' 
	description: 'Every method should have the initials of its latest author in its time stamp. This test finds methods whose author initials look suspicious and have perhaps been created by a tool. To fix invalid author initials, you can accept the method again in a browser.'
	category: 'Miscellaneous'>

	| authorInitials suspicious |
	aMethodTestObject ifClassTestChildrenWith: #suspiciousAuthorInitials:.
	aMethodTestObject shouldBeMethod.
	authorInitials := aMethodTestObject testObject timeStamp ifNotNil: [:stamp |
		stamp findTokens at: 1 ifAbsent: nil].
	
	suspicious := authorInitials isEmptyOrNil not and:
		[(authorInitials copyWithout: '0123456789/') isEmpty
			or: [#('programmatic' 'smalltalkCI' '*test*') anySatisfy: [:pattern | pattern match: authorInitials]]].
	
	^ (self booleanResult: suspicious)
		showOnlyIfTrue