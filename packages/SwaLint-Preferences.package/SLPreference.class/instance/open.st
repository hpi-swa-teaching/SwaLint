PreferenceBrowser
open

	^ self openInCategory: (self categoryList at: 1 ifAbsent: [])