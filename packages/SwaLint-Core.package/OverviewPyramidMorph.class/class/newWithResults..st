instance creation
newWithResults: aDictionary
	
	^ self new
		results: aDictionary;
		buildMorphs;
		yourself