accessing
class: aClass ignoreRule: aRule
	
	self classesIgnoringRules at: aRule
		ifPresent: [:classes |
			self classesIgnoringRules at: aRule put: (classes add: aClass; yourself) ]
		ifAbsentPut: [Set with: aClass]
	