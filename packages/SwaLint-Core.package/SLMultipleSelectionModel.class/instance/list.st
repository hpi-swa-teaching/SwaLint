list
list 
	"Answer a list of objects to be displayed in a listMorph 
	instance based on myself"
	
	^ list collect: [ :each | self asStringOf: each]