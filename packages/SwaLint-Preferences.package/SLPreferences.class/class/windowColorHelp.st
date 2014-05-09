window colors
windowColorHelp
	"Provide help for the window-color panel"

	| helpString |
	helpString := 
'The "Window Colors" panel lets you select colors for many kinds of standard Squeak windows.

You can change your color preference for any particular tool by clicking on the color swatch and then selecting the desired color from the resulting color-picker.

The three buttons entitled "Bright", "Pastel", and "White" let you revert to any of three different standard color schemes.  

The choices you make in the Window Colors panel only affect the colors of new windows that you open.

You can make other tools have their colors governed by this panel by simply implementing #windowColorSpecification on the class side of the model -- consult implementors of that method to see examples of how to do this.'.

	 (StringHolder new contents: helpString)
		openLabel: 'About Window Colors'

	"Preferences windowColorHelp"