*SwaLintBrowser-UI-menu construction
sl2Add: label getState: getter setState: setter

	| target |
	target := self defaultTarget.
	(getter respondsTo: #receiver) ifFalse: [^ self sl2Add: label getState: [getter value: target] setState: setter].
	(setter respondsTo: #receiver) ifFalse: [^ self sl2Add: label getState: getter setState: [:boolean | setter cull: target cull: boolean]].
	
	^ self addMorphBack: (UpdatingMenuItemMorph new
		target: [setter cull: getter value not];
		selector: #value;
		wordingProvider: ['<{1}>{2}' format: {getter value ifTrue: [#on] ifFalse: [#off]. label value}]
			wordingSelector: #value;
		arguments: #();
		yourself)