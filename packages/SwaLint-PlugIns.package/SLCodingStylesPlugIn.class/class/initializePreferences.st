preferences
initializePreferences

	self addPreferences: {
		{#Boolean. #NoDotAfterMethodEnd. {#CodingStyles}. true. 'If true, dots behind a return statement are a bad thing, if false, they are good.'.}.
		}.