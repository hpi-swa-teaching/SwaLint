pragma-preferences
pragmaValueNamed: aName in: aMethod of: aClass at: aNumber


	(Pragma allNamed: aName in: aClass) do:[ :pragma |
		((pragma method asString findString: (aMethod asString)) > 0)
			ifTrue: [ ^ pragma arguments at: aNumber. ]].
		
	^ nil.