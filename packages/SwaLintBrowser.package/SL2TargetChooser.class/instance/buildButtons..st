toolbuilder
buildButtons: builder

	^ Array
		with:
			(builder pluggableButtonSpec new
				model: self;
				label: 'Accept';
				action: #accept;
				color: #acceptColor;
				yourself)
		with:
			(builder pluggableButtonSpec new
				model: self;
				label: 'Cancel';
				action: #cancel;
				color: #cancelColor;
				yourself)