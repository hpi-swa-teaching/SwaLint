*SwaLintBrowser-UI-menus
sl2ClassListMenu: aMenu
	<classListMenuShifted: false>
	self hasClassSelected ifFalse: [^ aMenu].
	^ aMenu addList: #(
		-
		('review in SwaLint Browser' sl2OpenClass));
		yourself