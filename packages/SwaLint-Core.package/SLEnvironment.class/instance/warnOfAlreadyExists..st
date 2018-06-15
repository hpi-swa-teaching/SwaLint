initialize-release
warnOfAlreadyExists: aTest

	SwaLint 
		debugCr;
		debugOut: 'WARNING: ';
		debugOut: aTest asString;
		debugOut: ' already exists and will be overwritten!'.