app - accessing
projectDescription
	"Answer... read below..."
	
	^ ('{1} (v{2}) written by
Christoph Neijenhuis,
Johannes Dyck,
Tobias Pape,
Nico Rehwaldt,
Arian Treffer,
Jan-Tobias Matysik,
Siegfried Horschig,
Nico Aechtner,
Toni Stachewicz,
Niklas Hoffmann,
Björn Daase, and
Christoph Thiede.

See <a href="{3}">{3}</a> for more information.'
		format:
			{self swaLint.
			self versionString.
			self githubUrl})
				asTextFromHtml