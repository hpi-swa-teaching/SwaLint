preferences
rejectMethod: aSLMethod

	(SLPreferences valueOfFlag: #ShouldFilterMethods) ifFalse: [^ false].
	^ (self rejectMethodByDate: aSLMethod)
		or: [self rejectMethodByAuthor: aSLMethod]
