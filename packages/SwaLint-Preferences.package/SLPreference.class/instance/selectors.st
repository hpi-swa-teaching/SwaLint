local to project
selectors
	| fullNameWithoutSpaces |
	
	fullNameWithoutSpaces := ''.
	"filter out whitespaces"
	self name asSymbol do: [ :each | (each ~= Character space) ifTrue: [ fullNameWithoutSpaces := fullNameWithoutSpaces, each] ].
	^ fullNameWithoutSpaces
	