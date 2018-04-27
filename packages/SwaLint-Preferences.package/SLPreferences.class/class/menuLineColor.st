menu parameters
menuLineColor
	^ Parameters
		at: #menuLineColor
		ifAbsentPut: [(UserInterfaceTheme current get: #borderColor for: #MenuMorph) lighter]