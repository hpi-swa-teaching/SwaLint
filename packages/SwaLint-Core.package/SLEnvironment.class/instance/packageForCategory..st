menu
packageForCategory: aCategorySymbol

	^ PackageInfo allPackages detect: [ :p | 
			p includesSystemCategory: aCategorySymbol] ifNone: [^ nil]