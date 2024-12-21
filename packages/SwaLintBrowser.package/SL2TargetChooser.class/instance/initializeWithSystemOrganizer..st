initialize-release
initializeWithSystemOrganizer: aSystemOrganizer

	self systemOrganizer: aSystemOrganizer.
	self allSystemCategories: aSystemOrganizer categories sorted.
	self allClasses: (aSystemOrganizer elementArray sorted collect: [:className | self environment classNamed: className]).