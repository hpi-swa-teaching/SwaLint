pragma-preferences
initializePragmaPreferences

	(self preferenceQueriesOf: self name) do: [ :each | 
		self initializePragmaPreference: each ]