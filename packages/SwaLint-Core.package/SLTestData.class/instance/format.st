displaying
format

	| display |
	
	display := self name.
	self longRuntime ifTrue: [display := '*', display].
	^ display