initialization
resetDefaultValues

	self allPreferences do: [:preference |
		preference resetDefaultValue].