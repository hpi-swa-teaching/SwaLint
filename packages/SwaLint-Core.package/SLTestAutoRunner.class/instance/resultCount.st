observer
resultCount
	
	| count resultDialog returnCount |
	
	resultDialog := self resultDialog.
	count := 0.
	
	resultDialog ifNotNil: [
		resultDialog results do: [ :each |
			(each value isNil not and: [each isNumeric not]) ifTrue:
				[count := count + (self calculateResultWeight: (each value))]].
				returnCount := (count asString)]
		ifNil: [returnCount := '?'].
	
	"These random blanks in front of and behind the actual value are needed, so that one symbol strings are centered corectly"
	^ ((' ', returnCount, ' ') asText addAttribute: (TextFontReference toFont: (TextStyle default fontOfPointSize: 20)))