misc
giveHelpWithPreferences
	"Open up a workspace with explanatory info in it about Preferences"

	| aString aHelpString |
	aString := String streamContents: [:aStream | 
		aStream nextPutAll:

'Many aspects of the system are governed by the settings of various "Preferences".  

Click on any of brown tabs at the top of the panel to see all the preferences in that category.  
Or type in to the box above the Search button, then hit Search, and all Preferences matching whatever you typed in will appear in the "search results" category.  A preference is considered to match your search if either its name matches the characters *or* if anything in the balloon help provided for the preferences matches the search text.

To find out more about any particular Preference, hold the mouse over it for a moment and balloon help will appear.  Also, a complete list of all the Preferences, with documentation for each, is included below.

Preferences whose names are in shown in bold in the Preferences Panel are designated as being allowed to vary from project to project; those whose name are not in bold are "global", which is to say, they apply equally whatever project you are in.

Click on the name of any preference to get a menu which allows you to *change* whether the preference should vary from project to project or should be global, and also allows you to browse all the senders of the preference, and to discover all the categories under which the preference has been classified, and to be handed a button that you can drop wherever you please that will control the preference.

If you like all your current Preferences settings, you may wish to hit the "Save Current Settings as my Personal Preferences" button.  Once you have done that, you can at any point in the future hit "Restore my Personal Preferences" and all your saved settings will get restored immediately.

Also, you can use "themes" to set multiple preferences all at once; click on the "change theme..." button in the Squeak flap or in the Preferences panel, or seek out the themes item in the Appearance menu.' translated.

	aStream cr; cr; nextPutAll: '-----------------------------------------------------------------';
		cr; cr; nextPutAll:  'Alphabetical listing of all Preferences' translated; cr; cr.
   (Preferences allPreferenceObjects asSortedCollection: [:a :b | a name < b name]) do:
	[:pref |
		aStream nextPutAll: pref name; cr.
		aHelpString := pref helpString translated.
		(aHelpString beginsWith: pref name) ifTrue:
			[aHelpString := aHelpString copyFrom: (pref name size + 3) to: aHelpString size].
		aHelpString := (aHelpString copyReplaceAll: String cr with: ' ')  copyWithout: Character tab.
		aStream nextPutAll: aHelpString capitalized.
		(aHelpString last == $.) ifFalse: [aStream nextPut: $.].
        aStream cr; cr]].

	UIManager default edit: aString label: 'About Preferences' translated

"Preferences giveHelpWithPreferences"