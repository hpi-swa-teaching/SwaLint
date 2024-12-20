private
setClass: aBehavior selector: aSymbol

	(aSymbol isSymbol not or: [#(Definition Comment) includes: aSymbol]) ifTrue:
		[contents := currentCompiledMethod := nil.
		self decorateButtons.
		^ self].
	^ super setClass: aBehavior selector: aSymbol