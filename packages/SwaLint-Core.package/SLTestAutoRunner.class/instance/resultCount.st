observer
resultCount
	
	| count resultDialog |
	
	resultDialog := self resultDialog.
	count := 0.
	
	resultDialog ifNotNil: [
	resultDialog results do: [ :each | each value ifNotNil: [count := count + (self calculateResultWeight: (each value))]]].
		
	^ (count asString asText addAttribute: (TextFontReference toFont: (TextStyle default fontOfPointSize: 20)))