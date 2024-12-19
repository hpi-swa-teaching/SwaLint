### I am a copy of the Preferences class ###

The following changes have been made based on the Preferences class:
* updated references to Preferences and Preference & subclasses in methods and do-it comments
* prefixed pragma selector with sl prefix (preference constructors + addPragmaPreference:)
* added addBooleanPreference:categories:default:balloonHelp:projectLocal:changeInformee:changeSelector: and slpreference:categoryList:description:type:changeInformee:changeSelector:
* removed domain-specific preferences (including personalization)
* removed etoys/flaps support
* removed standard values
* removed themes

When maintaining this class, merge all new changes from the Preferences class into this class, considering the above exceptions (please preserve the old timestamps when copying methods by using Shift + Drag!). In the future, this implementation should reuse the default Preferences instead, perhaps by subclassing.