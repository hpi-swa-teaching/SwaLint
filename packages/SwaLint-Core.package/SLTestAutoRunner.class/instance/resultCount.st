observer
resultCount
	
	| count resultDialog |
	
	resultDialog := self resultDialog.
	count := 0.
	
	resultDialog ifNil: [^0].
	resultDialog results do: [ :each | each value ifNotNil: [count := count + (self calculateResultWeight: (each value))]].
		
	^ count