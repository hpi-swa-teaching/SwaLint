menu
packageForClassNamed: aString
	
	^ PackageInfo allPackages detect: [ :p | 
			p includesClassNamed: aString ] ifNone: [^ nil]