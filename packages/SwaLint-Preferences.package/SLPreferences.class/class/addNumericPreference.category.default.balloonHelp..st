add/remove - specific
addNumericPreference: prefSymbol category: categorySymbol default: defaultValue balloonHelp: helpString 
	"Add an item repreesenting the given preference symbol to the system."

	^ self addPreference: prefSymbol  categories: {categorySymbol} default:  defaultValue balloonHelp: helpString  projectLocal: false  changeInformee: nil changeSelector: nil type: #Number