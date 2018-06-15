private
systemFANOUT: aSLSystemTestObject 

	| methods methodsClasses |
	methods := Set new.
	aSLSystemTestObject allClasses collect: [:class | methods addAll: (class methods)].
	methodsClasses := Set new.
	methods collect: [:method | methodsClasses addAll: ((method resultOf: #calledClasses:) result)].
	^((methodsClasses intersection: (aSLSystemTestObject allClasses collect: [:class | class className])) size)