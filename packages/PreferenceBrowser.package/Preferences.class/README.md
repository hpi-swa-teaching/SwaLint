A general mechanism to store preference choices.  The default setup treats any symbol as a potential boolean flag; flags unknown to the preference dictionary are always returned as false.  

	To open the control panel:		Preferences openFactoredPanel
	To read how to use the panel (and how to make a preference be per-project):
		 Preferences giveHelpWithPreferences

All messages are on the class side.

To query a a preference:
	Preferences logDebuggerStackToFile
or some people prefer the more verbose
	Preferences valueOfFlag: #logDebuggerStackToFile

You can make up a new preference any time.  Do not define a new message in Preferences class. Accessor methods are compiled automatically when you add a preference as illustrated below:

To add a preference (e.g. in the Postscript of a fileout):
	Preferences addPreference: #samplePreference categories: #(general browsing)
		default: true balloonHelp: 'This is an example of a preference added by a do-it'
		projectLocal: false changeInformee: nil changeSelector: nil.

To change a preference programatically:
	Preferences disable: #logDebuggerStackToFile.
Or to turn it on,
	Preferences enable: #logDebuggerStackToFile.
