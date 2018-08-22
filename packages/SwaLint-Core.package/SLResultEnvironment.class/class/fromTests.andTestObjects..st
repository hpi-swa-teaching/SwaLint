instance creation
fromTests: aTestCollection andTestObjects: aTestObjectCollection

	^ (self new)
		originalTests: aTestCollection;
		originalTestObjects: aTestObjectCollection;
		loadDefaults