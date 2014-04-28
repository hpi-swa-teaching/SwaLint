accessing
timeString

	testTime ifNil: [testTime := DateAndTime current].
	^ String streamContents: [ :s |
		testTime printYMDOn: s.
		s nextPut: $ . 
		testTime printHMSOn: s]