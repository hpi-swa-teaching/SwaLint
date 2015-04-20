misc
browseThemes
	"Open up a message-category browser on the theme-defining methods"

	| aBrowser |
	aBrowser := Browser new setClass: Preferences class selector: #outOfTheBox.
	aBrowser messageCategoryListIndex: ((Preferences class organization categories indexOf: 'themes' ifAbsent: [^ self inform: 'no themes found']) + 1).
	Browser openBrowserView: (aBrowser openMessageCatEditString: nil)
		label: 'Preference themes'

	"Preferences browseThemes"