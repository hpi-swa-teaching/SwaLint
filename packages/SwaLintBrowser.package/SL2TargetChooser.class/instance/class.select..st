accessing - toolbuilder
class: aClass select: aBoolean

	self selectedClasses:
		(aBoolean
			ifFalse: [self target classes copyWithout: aClass]
			ifTrue: [(self target classes copyWith: aClass) withoutDuplicates]).