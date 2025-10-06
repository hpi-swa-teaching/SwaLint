toolbuilder
buildCreateDialogWith: builder

	^ builder pluggableDialogSpec new
		model: self;
		title: 'Select packages/classes';
		children:
			(Array
				with: (self buildSystemCategoryList: builder)
				with: (self buildClassList: builder));
		buttons: (self buildButtons: builder);
		yourself