accessing-results
resultAt: anInteger put: aBoolean

	| target |
	target := self results at: anInteger ifAbsent: [^ self].
	target isResultListDummy ifTrue: [
		"group selection"
		| end group select |
		end := (self results findFirst: [ :ea | ea isResultListDummy ] startingAt: anInteger + 1) - 1.
		end < 1 ifTrue: [end := self results size].
		group := self results copyFrom: anInteger + 1 to: end.
		select := (self resultsSelected includesAllOf: group) not.
		^ self resultsSelected:
			(select
				ifTrue: [
					self isMultiSelectable
						ifTrue: [ self resultsSelected , group ]
						ifFalse: [
							group ifEmpty: [^ self].
							self resultsSelected copyWith: group first] ]
				ifFalse: [
					self resultsSelected copyWithoutAll: group ]) ].
	target hasDetails ifTrue: [
		self resultsSelected:
			(self isMultiSelectable 
				ifTrue: [
					aBoolean
						ifTrue: [ self resultsSelected copyWith: target ]
						ifFalse: [ self resultsSelected copyWithout: target ]]
				ifFalse: [
					aBoolean
						ifTrue: [IdentitySet new add: target; yourself]
						ifFalse: [IdentitySet new]])].