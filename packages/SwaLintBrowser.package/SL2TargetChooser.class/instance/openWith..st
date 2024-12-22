private
openWith: builderBlock

	| builder |
	builder := Project uiManager toolBuilder.
	^ builder build: (builderBlock value: builder)