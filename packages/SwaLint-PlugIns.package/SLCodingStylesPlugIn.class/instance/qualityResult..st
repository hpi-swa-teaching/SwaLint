results
qualityResult: percentage

	^ (SLSummaryResult newWithValue: percentage low: 1/2 high: 9/10)
		summarizing: #csMethodHasDotAfterReturn: condition: 
			[:v| (v result ifNil: [true]) not];
		formatAsPercentage;
		showRule: [:p | p < 1 ];
		colorLowIsBad