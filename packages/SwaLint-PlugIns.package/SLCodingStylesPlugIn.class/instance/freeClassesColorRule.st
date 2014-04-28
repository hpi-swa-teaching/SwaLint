results
freeClassesColorRule

	^ [ :v |
		{SLResult green. SLResult yellow. SLResult orange}
			at: v
			ifAbsent: [SLResult red]]