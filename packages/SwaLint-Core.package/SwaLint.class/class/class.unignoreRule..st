accessing
class: aClass unignoreRule: aRule

	self classesIgnoringRules at: aRule ifPresent: [:classes |
		self classesIgnoringRules at: aRule put: (
			classes remove: aClass ifAbsent: []; yourself )]