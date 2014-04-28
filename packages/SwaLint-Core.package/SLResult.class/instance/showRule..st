accessing
showRule: aBlock
	"Set aBlock as the block beeing evaluated in order to 
	find out whether I will be shown. aBlock might contain 
	a parameter, which will be filled with my value on evaluation."
	
	showRule := aBlock.