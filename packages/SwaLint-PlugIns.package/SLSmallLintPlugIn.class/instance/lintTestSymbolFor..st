smalllint
lintTestSymbolFor: aTest	

	^ (aTest symbol allButFirst: self class defaultCategory size) asSymbol