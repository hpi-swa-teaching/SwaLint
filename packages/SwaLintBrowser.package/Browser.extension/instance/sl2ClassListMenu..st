*SwaLintBrowser-UI-menus
sl2ClassListMenu: aMenu
	<classListMenu>
	self hasClassSelected ifFalse: [^ aMenu].
	^ aMenu addList: #(
		-
		('review in SwaLint Browser' sl2OpenClass));
		yourself