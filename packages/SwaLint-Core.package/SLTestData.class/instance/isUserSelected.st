accessing
isUserSelected
	"Answer whether this test was selected by the user"
	
	^ userSelected ifNil: [false]