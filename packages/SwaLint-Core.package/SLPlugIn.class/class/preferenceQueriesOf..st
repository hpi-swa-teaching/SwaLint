pragma-preferences
preferenceQueriesOf: aSymbol

	| organization queries |

	organization := (Smalltalk at: aSymbol) class organization.
	queries := organization listAtCategoryNamed: self preferenceQueryCategoryName.
	
	^ queries.