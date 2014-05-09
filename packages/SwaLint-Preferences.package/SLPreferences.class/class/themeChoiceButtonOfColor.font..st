misc
themeChoiceButtonOfColor: aColor font: aFont
	"Answer a button inviting the user to choose a theme"

	| aButton |
	aButton := SimpleButtonMorph new target: self; actionSelector: #offerThemesMenu.
	aButton label: 'change theme...' translated font: aFont.
	aButton color: aColor.
	aButton setBalloonText: 'Numerous "Preferences" govern many things about the way Squeak looks and behaves.  Set individual preferences using a "Preferences" panel.  Set an entire "theme" of many Preferences all at the same time by pressing this "change theme" button and choosing a theme to install.  Look in category "themes" in Preferences class to see what each theme does; add your own methods to the "themes" category and they will show up in the list of theme choices.' translated.
	^ aButton