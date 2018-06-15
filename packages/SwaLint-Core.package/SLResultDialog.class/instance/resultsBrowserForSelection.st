browsing
resultsBrowserForSelection

	SwaLint useOBRefactory
		ifTrue: [	self selectorEnvironmentForResults open]
		ifFalse: [| list |
			list := self messageListForResults.
			self systemNavigation 
				browseMessageList: list asOrderedCollection sort "sorted to be viewed nicely"
				name: (self resultDialogLabelFor: list)].