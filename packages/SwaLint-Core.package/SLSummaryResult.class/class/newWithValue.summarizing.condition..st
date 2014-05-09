instance creation
newWithValue: aNumber summarizing: aTest condition: aBlock
	"The result is summarizing another (not boolean) test"

	^ (self new) 
		initValue: aNumber;
		summarizing: aTest condition: aBlock