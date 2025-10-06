preferences
rejectMethodByDate: aSLMethod  
	| splitString dateString |
	(SLPreferences valueOfPreference: #DateFilter) ifEmpty: [^ false].
	splitString := (SLPreferences valueOfPreference: #DateFilter) splitBy: ' '.
	dateString := (splitString allButFirst inject: '' into: [:str :next | str, ' ', next]) withBlanksTrimmed.
	^ aSLMethod testObject dateMethodLastSubmitted
			ifNil: [false]
			ifNotNilDo: [:dateAndTime | (dateAndTime asDate
										perform: splitString first asSymbol
										with: dateString asDate) not]
