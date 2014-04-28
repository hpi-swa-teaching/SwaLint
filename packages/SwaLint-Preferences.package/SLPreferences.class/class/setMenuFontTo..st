fonts
setMenuFontTo: aFont
	"rbb 2/18/2005 12:54 - How should this be changed to work
	with the UIManager, if at all?"
	Parameters at: #standardMenuFont put: aFont.
	PopUpMenu setMenuFontTo: aFont.
	TheWorldMainDockingBar updateInstances.