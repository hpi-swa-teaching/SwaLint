*SwaLintBrowser-UI-menus
sl2SystemCategoryMenu: aMenu
	<systemCategoryMenuShifted: false>
	self hasSystemCategorySelected ifFalse: [^ aMenu].
	^ aMenu addList: #(
		-
		('review in SwaLint Browser' sl2OpenSystemCategory));
		yourself