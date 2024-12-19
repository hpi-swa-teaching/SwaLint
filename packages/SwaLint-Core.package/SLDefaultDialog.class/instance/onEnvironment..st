initialization
onEnvironment: aSLEnvironment

	self removeDependent: environment.
	environment := aSLEnvironment.
	self addDependent: environment.
	self update.