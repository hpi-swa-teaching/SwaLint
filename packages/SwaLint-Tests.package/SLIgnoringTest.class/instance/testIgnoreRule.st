tests
testIgnoreRule

	SwaLint class: self class ignoreRule: rule.
	self assert: (SwaLint class: self class ignoresRule: rule).
	
	SwaLint class: self class unignoreRule: rule.