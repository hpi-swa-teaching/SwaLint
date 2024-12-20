*SwaLintBrowser-UI-menus
sl2OpenClass

	self hasClassSelected ifNil: [^ self changed: #flash].
	^ SwaLintBrowser openOnTarget: 
		(SL2Target withClass: self selectedClass)