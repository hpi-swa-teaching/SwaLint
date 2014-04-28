instance creation
open
	Transcript show: 'SwaLint: A result dialog should not be created directly';
				cr;
				show:'SwaLint: Opening a default dialog instead'.
	^ SLDefaultDialog open