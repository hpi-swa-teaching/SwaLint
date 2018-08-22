initialization
initializeInstanceVariables

	super initializeInstanceVariables.
	results := OrderedCollection new.
	resultsSelected := IdentitySet new.
	isMultiSelectable := true.
	isOrderedByTests := SwaLint OrderByTests.
	