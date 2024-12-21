*SwaLint-Core-UserInterface-override
buildPluggableMultiSelectionList: aSpec
	| widget listClass |
	aSpec getSelected ifNotNil:[^self error:'There is no PluggableListMorphOfManyByItem'].
	listClass := self multiSelectListClass.
	widget := listClass on: aSpec model
		list: aSpec list
		primarySelection: aSpec getIndex
		changePrimarySelection: aSpec setIndex
		listSelection: aSpec getSelectionList
		changeListSelection: aSpec setSelectionList
		menu: aSpec menu.
	self register: widget id: aSpec name.
	widget keystrokeActionSelector: aSpec keyPress.
	widget getListElementSelector: aSpec listItem.
	widget getListSizeSelector: aSpec listSize.
	widget getIconSelector: aSpec icon.
	self buildHelpFor: widget spec: aSpec. 
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	aSpec itemAlignment ifNotNil: [:alignment | widget listMorph cellPositioning: alignment].
	aSpec itemPadding ifNotNil: [:padding | widget listMorph cellInset: padding].
	parent ifNotNil:[self add: widget to: parent].
	panes ifNotNil:[
		aSpec list ifNotNil:[panes add: aSpec list].
	].
	^widget