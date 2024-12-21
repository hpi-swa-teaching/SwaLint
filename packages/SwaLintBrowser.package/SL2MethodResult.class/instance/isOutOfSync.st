testing
isOutOfSync

	^ self method isInstalled not
		and: [self method timeStamp ~= ([self method methodReference timeStamp] ifError: [nil])]