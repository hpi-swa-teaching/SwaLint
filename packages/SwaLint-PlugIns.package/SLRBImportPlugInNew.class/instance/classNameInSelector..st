as yet unclassified
classNameInSelector: aSLClassTestObject

	<slTestName:  'Redundant class name in selector'
	description: 'Checks for the class name in a selector of a class side method. This is redundant since to call the you must already refer to the class name. For example, openHierarchyBrowserFrom: is a redundant name for HierarchyBrowser'>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #classNameInSelectorMethod:
		satisfying: [:result | result isPositive]
