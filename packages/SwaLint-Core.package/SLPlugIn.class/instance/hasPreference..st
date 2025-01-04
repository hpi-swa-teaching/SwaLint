preferences
hasPreference: aSymbol

	^ SLPlugIn withAllSubclasses anySatisfy: [:plugInClass | plugInClass respondsTo: aSymbol]