updating-private
dependentAspectsOn: aspect

	self flag: #todo. "Detect cyclic dependencies!"
	^ self allAspectDependencies associations
		select: [:assoc |
			assoc value isString ifTrue: [
				self notify: 'You probably missed an array here!' "aid for stupid devs"].
			assoc value includes: aspect]
		thenCollect: [:assoc | assoc key]