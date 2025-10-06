*SwaLintBrowser-UI-menus
sl2OpenSystemCategory

	| categories |
	self hasSystemCategorySelected ifNil: [^ self changed: #flash].
	categories := self currentEvent shiftPressed
		ifTrue: [{self selectedSystemCategory}]
		ifFalse: [self systemCategoryList select: [:category | category beginsWith: self selectedSystemCategory]].
	^ SwaLintBrowser openOnTarget: 
		(SL2Target withSystemCategories: categories)