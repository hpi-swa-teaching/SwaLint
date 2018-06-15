browsing
addResult: aResultObject toEnvironment: anEnvironment	
	
	aResultObject testObject ifMethod: [
		anEnvironment 
			addClass: aResultObject testObject parent testObject 
			selector: aResultObject testObject methodSelector].
	aResultObject testObject ifClass: [
		anEnvironment 
			addClass: aResultObject testObject testObject
			selector: #Definition].