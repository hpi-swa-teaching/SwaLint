Represents a true/false flag that is under user control and which can be interrogated by a call to Preferences
	viewRegistry		the registry of the classes responsible for building my view
	name 				a symbol, the formal name of the preference.
	value				a boolean, the current value
	defaultValue		the default value of the preference
	helpString 			string or text, constituting the help message
	localToProject		boolean, whether each project holds its own version
	categoryList			list of categories under which to offer this
	changeInformee 	whom, if anyone, to inform if the value changes:
	changeSelector 		what selector to send to the changeInformee when the value changes