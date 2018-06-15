private
buildListFrom: aDictionary

	| keys list |
	keys := aDictionary keys asOrderedCollection sorted.
	list := OrderedCollection new.
	(keys includes: #'Tested System') ifTrue: [
			list addAll: (aDictionary at: #'Tested System').
			keys remove: #'Tested System'].
	keys do: [ :each | list addAll: (aDictionary at: each) ]. 

	^ list isEmpty
		ifTrue: [OrderedCollection with: SLResultListDummy new]
		ifFalse: [list] 