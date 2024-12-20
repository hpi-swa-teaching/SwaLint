*SwaLintBrowser-UI-menus
sl2SystemCategoryMenu: aMenu
	<systemCategoryMenu>
	self hasSystemCategorySelected ifFalse: [^ aMenu].
	^ aMenu addList: #(
		-
		('review in SwaLint Browser' sl2OpenSystemCategory));
		yourself