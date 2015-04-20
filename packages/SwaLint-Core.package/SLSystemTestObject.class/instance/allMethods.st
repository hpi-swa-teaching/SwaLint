accessing
allMethods

	^ allMethods ifNil: [
		allMethods := (self allClasses gather: [ :each | each methods]) asOrderedCollection]