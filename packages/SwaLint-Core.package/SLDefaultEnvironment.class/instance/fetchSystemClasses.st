accessing
fetchSystemClasses
	
	systemClasses := Dictionary new.
	Smalltalk allClasses do: [ :aClass |
		aClass category ifNotNil: [
		(self category: aClass category) 
			add: aClass name]].