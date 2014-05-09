control
ifClassTestChildrenWith: aTest

	self children do: [ :each |
		each testWith: aTest]