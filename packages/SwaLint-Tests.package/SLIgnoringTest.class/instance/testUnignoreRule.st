tests
testUnignoreRule

	SwaLint class: self class ignoreRule: rule.
	SwaLint class: self class unignoreRule: rule.
	self assert: (SwaLint class: self class ignoresRule: rule) not.