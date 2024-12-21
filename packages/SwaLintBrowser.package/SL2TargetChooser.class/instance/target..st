accessing
target: aTarget

	target := aTarget.
	
	"convenient scroll down to first selected items"
	self allSystemCategories detect: [:ea | self selectedSystemCategories includes: ea] ifFound: [:ea | self selectSystemCategory: ea].
	self allClasses detect: [:ea | self selectedClasses includes: ea] ifFound: [:ea | self selectClass: ea].