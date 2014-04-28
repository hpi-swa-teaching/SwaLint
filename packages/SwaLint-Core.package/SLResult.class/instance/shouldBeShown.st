displaying
shouldBeShown
	"Answer whether I want to be shown in the tesult list. 
	In order to find out, evaluate my showRule with my value."
	
	^ self showRule valueWithPossibleArgument: self content