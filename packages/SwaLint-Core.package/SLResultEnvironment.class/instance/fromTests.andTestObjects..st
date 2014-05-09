initialize-release
fromTests: aTestCollection andTestObjects: aTestObjectCollection

	self 
		originalTests: aTestCollection;
		originalTestObjects: aTestObjectCollection;
		defaultResults;
		reload;
		defaultSelections.