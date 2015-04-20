smalllint
classNameForLintRule: aTestSymbol
	"Get LintRule class name identified by aTestSymbol."
	
	^ self class namespacePrefix, aTestSymbol, self class postfix
