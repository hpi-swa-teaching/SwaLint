private
systemFANOUT: aSLSystemTestObject 

	| methods methodsClasses |
	methods := Set new.
	aSLSystemTestObject allClasses do: [:class | methods addAll: (class methods)].
	methodsClasses := Set new.
	methods do: [:method | methodsClasses addAll: ((method resultOf: #calledClasses:) result)].
	^((methodsClasses intersection: (aSLSystemTestObject allClasses collect: [:class | class className])) size)