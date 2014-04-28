preferences
rejectMethodByDate: aSLMethod  
	| splitString dateString |
	SLPreferences DateFilter ifEmpty: [^ false].
	splitString := (SLPreferences DateFilter splitBy: ' ').
	dateString := (splitString allButFirst inject: '' into: [:str :next | str, ' ', next]) trimBoth.
	^ aSLMethod testObject dateMethodLastSubmitted
			ifNil: [false]
			ifNotNilDo: [:dateAndTime | (dateAndTime asDate
										perform: splitString first asSymbol
										with: dateString asDate) not]
