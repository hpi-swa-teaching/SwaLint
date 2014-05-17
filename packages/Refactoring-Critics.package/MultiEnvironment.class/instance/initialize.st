initialize-release
initialize
	super initialize.
	environmentDictionaries := Dictionary new.
	environment := SelectorEnvironment new