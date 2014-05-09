instance creation
withModel: aModel withMessage: aMethodSelector withAsStringSelector: aAsStringSelector

	^ (self withModel: aModel withList: #() withMessage: aMethodSelector)
		asStringSelector: aAsStringSelector