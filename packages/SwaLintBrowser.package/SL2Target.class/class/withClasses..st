instance creation
withClasses: classes

	^ self new
		systemCategories: (classes collect: [:class | class category] as: Array) withoutDuplicates;
		classes: classes;
		yourself