pragma-preferences
preferencePragmasOf: aClass

	| pragmas |

	pragmas := OrderedCollection new.
	aClass methodsDo: [ :aMethod | 
		pragmas addAll: 
			(aMethod pragmas select: [ :aPragma | self isPreferencePragma: aPragma ]) ].
		
	^ pragmas