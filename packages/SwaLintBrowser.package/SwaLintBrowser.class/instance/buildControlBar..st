toolbuilder
buildControlBar: builder

	^ builder pluggablePanelSpec new
		layout: #horizontal;
		children:
			(OrderedCollection new
				add:
					(builder pluggableActionButtonSpec new
						model: self;
						label: #targetLabel;
						action: #changeTarget;
						yourself);
				"add:
					(builder pluggableButtonSpec new
						model: self;
						state: #hasDateFilterLabel;
						label: #dateFilterLabel;
						action: #changeDateFilter;
						yourself);
				add:
					(builder pluggableActionButtonSpec new
						model: self;
						state: #hasAuthorFilterLabel;
						label: #authorFilterLabel;
						action: #changeAuthorFilter;
						yourself);"
				add: builder pluggableSpacerSpec new;
				add:
					(builder pluggableButtonSpec new
						model: self;
						label: 'Settings';
						style: #menuButton;
						action: #offerSettingsMenu;
						yourself);
				yourself);
		yourself