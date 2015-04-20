displaying
format

	| display |
	
	display := self name.
	(self longRuntime and: [SwaLint MarkLongRuntimeTests]) ifTrue: [display := '*', display].
			
	^ display