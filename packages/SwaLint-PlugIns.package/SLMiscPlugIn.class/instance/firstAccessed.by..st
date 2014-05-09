private
firstAccessed: instVars by: method
	"Answer the number of the first accessed Inst-Var. (see #accessedVar:)"

	1 to: instVars size do: [ :i |
		 ((method writesField: i) or: [method readsField: i]) 
			ifTrue:[^ i]].
