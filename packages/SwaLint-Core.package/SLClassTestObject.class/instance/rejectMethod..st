preferences
rejectMethod: aSLMethod

	SLPreferences ShouldFilterMethods ifFalse: [^ false].
	^ (self rejectMethodByDate: aSLMethod)
		or: [self rejectMethodByAuthor: aSLMethod]
