displaying
formatAsMethodList

	self valueFormatRule: [:v | | value |
		value := ''.
		v allButLastDo: [:each | value := value, each name, ', ']. 
		value := value, v last name.
		value].