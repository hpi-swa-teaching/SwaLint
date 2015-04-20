personalization
disableProgrammerFacilities
	"Warning: do not call this lightly!  It disables all access to menus, debuggers, halos.  There is no guaranteed return from this, which is to say, you cannot necessarily reenable these things once they are disabled -- you can only use whatever the UI of the current project affords, and you cannot even snapshot -- you can only quit. 

     You can completely reverse the work of this method by calling the dual Preferences method enableProgrammerFacilities, provided you have left yourself leeway to bring about a call to that method.

	To set up a system that will come up in such a state, you have to request the snapshot in the same breath as you disable the programmer facilities.  To do this, put the following line into the 'do' menu and then evaluate it from that 'do' menu:

         Preferences disableProgrammerFacilities.

You will be prompted for a new image name under which to save the resulting image."

	Beeper beep.
	(self 
		confirm: 'CAUTION!!
This is a drastic step!
Do you really want to do this?') 
			ifFalse: 
				[Beeper beep.
				^self inform: 'whew!'].
	self disable: #cmdDotEnabled.	"No user-interrupt-into-debugger"
	self compileHardCodedPref: #cmdGesturesEnabled enable: false.	"No halos, etc."
	self compileHardCodedPref: #cmdKeysInText enable: false.	"No user commands invokable via cmd-key combos in text editor"
	self enable: #noviceMode.	"No control-menu"
	self disable: #warnIfNoSourcesFile.
	self disable: #warnIfNoChangesFile.
	SmalltalkImage current saveAs