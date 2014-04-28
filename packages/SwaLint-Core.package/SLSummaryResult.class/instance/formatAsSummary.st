displaying
formatAsSummary

	self valueFormatRule: [ :v |
		v rounded asString, 
		' occurence', ((v = 1) ifTrue: [''] ifFalse: ['s'])].