debugging
printResults: aResult expected: anObject if: debugOn

	debugOn ifTrue: [
		Transcript 
			show: aResult testObject asString, ' #';
			show: aResult testData symbol;
			show: ': ', aResult result asString;
			show: ', expected: ', anObject asString;
			cr].