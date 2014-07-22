displaying
format

	| display |
	
	display := self name.
	(self longRuntime and: 
		[(SLPreferences preferenceAt: #MarkLongRuntimeTests) preferenceValue]) 
			ifTrue: [display := '*', display].
			
	^ display