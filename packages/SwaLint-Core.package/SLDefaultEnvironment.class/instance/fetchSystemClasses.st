accessing
fetchSystemClasses
	
	systemClasses := Dictionary new.
	Smalltalk allClassesDo: [ :aClass |
		aClass category ifNotNil: [
		(self category: aClass category) 
			add: aClass name]].