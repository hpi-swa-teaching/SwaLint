updating
changed: aspect

	super changed: aspect.
	
	caches keys do: [:key |
		((self pragmaAspectDependencies at: key selector) includes: aspect) ifTrue:
			[caches removeKey: key]].
	
	(self dependentAspectsOn: aspect)
		do: [:dependentAspect | self changedDependent: dependentAspect].