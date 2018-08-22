private
getBaseClassInstanceVaribalesUsedIn: aSLClassTestObject

	| allMethodsUsedInClass allBaseClassAccessors instanceVars |

	allMethodsUsedInClass := (self allMethodsUsedIn: aSLClassTestObject).
	allBaseClassAccessors := aSLClassTestObject superInstanceMethods select: [ :each | (each resultOf: #isAccessor:) result].
	instanceVars := (allBaseClassAccessors 
		select: [ :each | allMethodsUsedInClass includes: each testObject selector]
		thenCollect: [ :each | aSLClassTestObject superInstanceVariables at: (each resultOf: #accessedVar:) ]) asSet.
	aSLClassTestObject instanceMethods do: [ :each | instanceVars addAll: (each resultOf: #usedInstVars:) result].

	^ instanceVars