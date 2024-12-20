accessing - toolbuilder
class: aClass select: aBoolean

	self target classes:
		(aBoolean
			ifFalse: [self target classes copyWithout: aClass]
			ifTrue: [(self target classes copyWith: aClass) withoutDuplicates]).
	
	self changed: #selectedClasses.