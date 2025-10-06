menus
messageListMenu: aMenu shifted: shifted 

	| menu |
	menu := aMenu.
	menu := self messageResultMenu: menu.
	self hasMethodSelected ifTrue:
		[aMenu addLine.
		menu := self menu: aMenu for: #(messageListMenu messageListMenuShifted:) shifted: shifted].
	^ menu