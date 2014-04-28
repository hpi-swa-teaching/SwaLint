accessing
originalTestObjects: aCollection
	"Filter all classes out of aCollection and build 
	category and class model upon them"
	
	systemClasses := Dictionary new.
	aCollection do: [ : aClass |
		aClass ifClass: [
			(self category: aClass category) add: aClass]].
	self defaultClassCategories.