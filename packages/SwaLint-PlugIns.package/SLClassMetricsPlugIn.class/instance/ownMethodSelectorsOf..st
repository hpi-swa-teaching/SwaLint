private
ownMethodSelectorsOf: aSLClassTestObject

	^ aSLClassTestObject testSystem allMethods 
		select: [ :method | aSLClassTestObject isSameAs: method parent] 
		thenCollect: [ :method | method methodSelector]