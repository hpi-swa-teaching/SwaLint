misc
installTheme: aSymbol
	"Install the theme represented by aSymbol.  The code that makes the theme-specific changes is lodged in a method of the same name as aSymbol, which must reside in category #themes in Preferences class"

	self perform: aSymbol.
	self inform: ('Theme {1} is now installed.
Many of the changes will only be
noticeable in new windows that you
create from now on.' translated format: {aSymbol translated}).