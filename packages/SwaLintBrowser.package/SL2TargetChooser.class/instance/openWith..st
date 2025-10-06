private
openWith: builderBlock

	| builder |
	builder := Project uiManager toolBuilder.
	^ builder open: (builderBlock value: builder)