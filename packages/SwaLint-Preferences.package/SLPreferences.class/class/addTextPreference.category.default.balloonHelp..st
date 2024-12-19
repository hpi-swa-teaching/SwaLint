add/remove - specific
addTextPreference: prefSymbol category: categorySymbol default: defaultValue balloonHelp: helpString 
	"Add an item repreesenting the given preference symbol to the system. Default view for this preference is boolean to keep backward compatibility"

	^ self addPreference: prefSymbol  categories: {categorySymbol} default:  defaultValue balloonHelp: helpString  projectLocal: false  changeInformee: nil changeSelector: nil type: #String