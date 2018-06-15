accessing
fetchSystemClasses
	
	systemClasses := Dictionary new.
	Smalltalk allClasses do: [ :aClass |
		(self category: aClass category) 
			add: aClass name].