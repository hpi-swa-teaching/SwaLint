local to project
isProjectLocalString
	"Answer a string representing whether sym is a project-local preference or not"

	| aStr |
	aStr :=  'each project has its own setting'.
	^ self localToProject
		ifTrue:
			['<yes>', aStr]
		ifFalse:
			['<no>', aStr]