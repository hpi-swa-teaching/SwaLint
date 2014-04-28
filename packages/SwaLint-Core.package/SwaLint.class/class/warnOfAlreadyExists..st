debugging
warnOfAlreadyExists: aTest

	self 
		debugCr;
		debugOut: 'WARNING: ';
		debugOut: aTest asString;
		debugOut: ' already exists and will be overwritten!'.