preferences
preference: aSymbol

	^ (SLPlugIn withAllSubclasses
		detect: [:plugInClass | plugInClass respondsTo: aSymbol])
			perform: aSymbol