summarizing
selectForSummary: aSLTestObject

	^ self summarizingCondition value:
		([aSLTestObject resultOf: self summarizedTest]
			on: SLTestError do: [:ex |
				(ex exception isKindOf: SLWrongTypeError) ifFalse: [ex pass].
				self flag: #revisit. "now that summary results may summarize different types of test objects, asking for summarizing the wrong ones for a test will lead to wrong type errors"
				^ false]
			on: SLTestError do: [:ex |
				"also this is now possible when something assumes the wrong type..."
				^ false])