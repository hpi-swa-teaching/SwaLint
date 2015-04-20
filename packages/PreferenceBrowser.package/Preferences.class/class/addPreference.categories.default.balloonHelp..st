add preferences
addPreference: prefSymbol categories: categoryList default: defaultValue balloonHelp: helpString 
	"Add an item repreesenting the given preference symbol to the system. Default view for this preference is boolean to keep backward compatibility"
	self addBooleanPreference: prefSymbol categories: categoryList default: defaultValue balloonHelp: helpString.