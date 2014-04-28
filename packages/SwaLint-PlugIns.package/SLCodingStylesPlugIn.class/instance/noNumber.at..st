private
noNumber: aString at: anInteger

	| c |
	c := aString at: anInteger-1 ifAbsent: [$ ].
	('1234567890' includes: c) ifFalse: [^ true].
	c := aString at: anInteger+1 ifAbsent: [$ ].
	('1234567890' includes: c) ifFalse: [^ true].
	^ false