running
checkClass: aContext
	aContext selectedClass isMeta 
		ifTrue: [ ^ self ].
	aContext selectedClass organization classComment isEmpty ifTrue: [ 
		result 
			addClass: aContext selectedClass; 
			addClass: aContext selectedClass class ]