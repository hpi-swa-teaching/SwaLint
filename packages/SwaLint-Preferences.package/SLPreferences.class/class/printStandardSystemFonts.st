fonts
printStandardSystemFonts
	"self printStandardSystemFonts"

	| string |
	string := String streamContents: [ :s |

	#(standardDefaultTextFont standardListFont standardFlapFont 
	standardEToysFont standardMenuFont windowTitleFont 
	standardBalloonHelpFont standardCodeFont standardButtonFont) do: [:selector |
		| font |
		font := Preferences perform: selector.
		s
			nextPutAll: selector; space;
			nextPutAll: font familyName; space;
			nextPutAll: (AbstractFont emphasisStringFor: font emphasis);
			nextPutAll: ' points: ';
			print: font pointSize;
			nextPutAll: ' height: ';
			print: font height;
			cr
		]].

	(StringHolder new)
		contents: string;
		openLabel: 'Current system font settings' translated.
