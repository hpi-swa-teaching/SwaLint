toolbuilder
offerMenu: menuBlock

	| builder menu |
	self flag: #workaround. "PluggableMenuButtonSpec would be much nicer, but it's not yet live ..."
	self flag: #workaround. "PluggableMenuSpec would still be a bit nicer but is not fully compatible with MenuMorph."
	builder := ToolBuilder default.
	menu := builder menuClass new.
	menu := menuBlock value: menu.
	^ builder runModal: (builder open: menu)