misc
offerThemesMenu
	"Put up a menu offering the user a choice of themes.  Each theme is represented by a method in category #themes in Preferences class.  The comment at the front of each method is used as the balloon help for the theme"

	"Preferences offerThemesMenu"
	| selectors aMenu |
	selectors := self class allMethodsInCategory: #themes.
	selectors := selectors select: [:sel | sel numArgs = 0].
	aMenu := MenuMorph new defaultTarget: self.
	aMenu addTitle: 'Choose a theme to install' translated.
	selectors do:
		[:sel |
			aMenu add: sel target: self selector: #installTheme: argument: sel.
			aMenu balloonTextForLastItem: (self class firstCommentAt: sel)].
	aMenu addLine.
	aMenu add: 'browse themes' translated target: self action: #browseThemes.
	aMenu balloonTextForLastItem: 'Puts up a tool that will allow you to view and edit the code underlying all of the available themes' translated.
	aMenu popUpInWorld.
	"(Workspace new contents: 'here is an example of a new window with your new theme installed' translated) openLabel: 'Testing one two three'"