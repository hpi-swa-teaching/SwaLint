fonts
setDefaultFonts: defaultFontsSpec
	"Since this is called from menus, we can take the opportunity to prompt for missing font styles."

	| fontNames map emphases |
	fontNames := defaultFontsSpec collect: [:array | array second].
	map := IdentityDictionary new.
	emphases := IdentityDictionary new.
	fontNames do: [:originalName | | decoded style response |
		decoded := TextStyle decodeStyleName: originalName.
		style := map at: originalName put: (TextStyle named: decoded second).
		emphases at: originalName put: decoded first.
		style ifNil: [
			response := TextStyle modalStyleSelectorWithTitle: 'Choose replacement for text style ', originalName.
			map at: originalName put: (response ifNil: [TextStyle default])]].

	defaultFontsSpec do: [:triplet | self
		perform: triplet first
		with: (((map at: triplet second) fontOfPointSize: triplet third) emphasis: (emphases at: triplet second))]