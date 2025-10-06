toolbuilder
buildWith: builder

	| windowSpec |
	windowSpec := self buildWindowWith: builder specs:
		{LayoutFrame fullFrame
			bottomFraction: 0;
			bottomOffset: self buttonBarHeight;
			-> [self buildControlBar: builder].
		LayoutFrame fullFrame
			topOffset: self buttonBarHeight;
			bottomFraction: 2 / 5;
			rightFraction: 1 / 3;
			-> [self buildTestTree: builder].
		LayoutFrame fullFrame
			topOffset: self buttonBarHeight;
			bottomFraction: 2 / 5;
			leftFraction: 1 / 3;
			rightFraction: 2 / 3;
			-> [self buildClassList: builder].
		LayoutFrame fullFrame
			topOffset: self buttonBarHeight;
			bottomFraction: 2 / 5;
			leftFraction: 2 / 3;
			-> [self buildMessageList: builder].
		LayoutFrame fullFrame
			topFraction: 2 / 5;
			bottomFraction: 4 / 5;
			-> [self buildCodePaneWith: builder].
		LayoutFrame fullFrame
			topFraction: 4 / 5;
			-> [self buildTestPane: builder]}.
	^ builder build: windowSpec