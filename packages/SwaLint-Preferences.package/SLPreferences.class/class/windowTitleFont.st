fonts
windowTitleFont
	"Answer the standard font to use for window titles"
	^  Parameters at: #windowTitleFont ifAbsent:
		[Parameters at: #windowTitleFont put: (StrikeFont familyName: #NewYork size: 15)]