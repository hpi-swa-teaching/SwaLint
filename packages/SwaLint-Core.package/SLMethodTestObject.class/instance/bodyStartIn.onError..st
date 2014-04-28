private
bodyStartIn: source onError: block

	| start |
	start  := self endOfMessagePatternIn: source.
	^ start == 0
		ifTrue: [block value]  
		ifFalse: [start + 2]