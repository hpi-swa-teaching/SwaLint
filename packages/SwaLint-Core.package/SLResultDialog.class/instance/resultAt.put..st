accessing-results
resultAt: anInteger put: aBoolean
	| target |
	target := self results at: anInteger ifAbsent: [^ self].
	target hasDetails ifTrue: [
		resultsSelected := self isMultiSelectable 
			ifTrue: [
				aBoolean
					ifTrue: [ resultsSelected copyWith: target ]
					ifFalse: [ resultsSelected copyWithout: target ]]
			ifFalse: [
				aBoolean
					ifTrue: [IdentitySet new add: target; yourself]
					ifFalse: [IdentitySet new]]].

	self changed: #browsable.