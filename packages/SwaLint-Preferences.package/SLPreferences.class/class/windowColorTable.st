window colors
windowColorTable
	"Answer a list of WindowColorSpec objects, one for each tool to be represented in the window-color panel"
	^ (WindowColorRegistry registeredWindowColorSpecs
		asSortedCollection: 
			[:specOne :specTwo | specOne wording < specTwo wording]) asArray

"Preferences windowColorTable"