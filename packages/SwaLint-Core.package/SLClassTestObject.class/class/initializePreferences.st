class initialization
initializePreferences

	SLPreferences addBooleanPreference: #ShouldFilterMethods
		categories: #(#'Method Filtering')
		default: false
		balloonHelp: 'Determines whether method filters should be enabled. If true, methods will be filtered based on the filter preferences in this category. This can be used to only analyze parts of a system'.
	SLPreferences addTextPreference: #DateFilter
		categories: #(#'Method Filtering')
		default: ''
		balloonHelp: 'This filter can be used to filter methods by date. For example, to only analyze methods written after 06/25/2010, write ''> 06/25/2010'' or ''> 25.06.2010''. To analyze only methods written before or on that date, write ''<= 06/25/2010''. The string up to the first space is used as the comparator method selector, the rest is parsed into a Date object for comparison'.
	SLPreferences addTextPreference: #AuthorFilter
		categories: #(#'Method Filtering')
		default: ''
		balloonHelp: 'This filter can be used to filter methods by author.
You can provide a list of authors and whether they should match positively or negatively. For example, to only analyze methods written by ar or rhi, write ''ar, rhi''. To analyze only methods written by people other than ar or rhi, write ''~= ar, rhi''. The string is split by comma + space, with the optional negation operator and a space in front'.
