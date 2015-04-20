personalization
enableProgrammerFacilities
	"Meant as a one-touch recovery from a #disableProgrammerFacilities call."
	"Preferences enableProgrammerFacilities"

	self enable: #cmdDotEnabled.
	self compileHardCodedPref: #cmdGesturesEnabled enable: true. 
	self compileHardCodedPref: #cmdKeysInText enable: true.
	self disable: #noviceMode.
	self enable: #warnIfNoSourcesFile.
	self enable: #warnIfNoChangesFile.