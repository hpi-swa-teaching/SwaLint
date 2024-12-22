accessing
testEnvironment: aSLEnvironment 

	self removeDependent: environment.
	environment := aSLEnvironment.
	self addDependent: environment.